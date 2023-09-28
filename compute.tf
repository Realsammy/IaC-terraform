module "gcp_infrastructure" {
  source         = "./gcp_vm"
  vm_name        = "infra-vm"
  vm_username    = "devops"
  environment    = "rail-network"
  machine_type   = "n1-standard-1"
  vm_disk_size   = 30
  gcp_region     = "us-central1"
  gcp_zone       = "us-central1-b"
  gcp_project_id = "terrafor4gcp" #"terrafor4gcp"
  gcp_credentials_file = file("./gcp_key.json")
}

