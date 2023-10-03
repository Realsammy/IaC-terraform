# Create a VPC network
resource "google_compute_network" "vpc_network" {
  name = "infra-network-${var.environment}"
  auto_create_subnetworks = false
}

# Create a subnet in the VPC network
resource "google_compute_subnetwork" "subnet" {
  name          = "infra-subnet-${var.environment}"
  network       = google_compute_network.vpc_network.self_link
  ip_cidr_range = "10.0.1.0/24"
  region        = var.gcp_region
}

# Create a public IP address
resource "google_compute_address" "public_ip" {
  name = "vm-ip-${var.environment}"
}

# Create a firewall rule
resource "google_compute_firewall" "firewall_rule" {
  name    = "allow-ssh-http-https-${var.environment}"
  network = google_compute_network.vpc_network.self_link

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "8080"]
  }

  source_ranges = ["0.0.0.0/0"]
}

# Create a network interface with a public IP
resource "google_compute_instance" "vm_instance" {
  name                      = var.vm_name
  machine_type              = "e2-small"
  tags                      = ["${var.environment}"]
  allow_stopping_for_update = true

  boot_disk {
    # auto_delete = false
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  
  }

metadata = {
    ssh-keys = "${var.ssh_user}:${file(var.pubkey_file)}"
  }
  network_interface {
    network = google_compute_network.vpc_network.self_link
    subnetwork = google_compute_subnetwork.subnet.self_link
    access_config {
      nat_ip = google_compute_address.public_ip.address
    }
  }

}

resource "google_storage_bucket" "auto-expire" {
  name          = "jupiter-rail-bucket"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}


  resource "local_file" "vm_ip" {
  content  = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
  filename = "./${var.environment}_vm_ip.txt"
}


#resource "google_sql_database_instance" "jupiter_db" {
 # name             = "jupiter-instance"
  #database_version = "MYSQL_5_7"
  #region           = "us-central1"

  #settings {
   # tier = "db-f1-micro"
  #}
#}

