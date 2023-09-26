module "gcp_infrastructure" {
  source         = "./gcp_vm"
  vm_name        = "vm_name"
  vm_username    = "devops"
  environment    = "environment"
  vm_disk_size   = 30
  gcp_region     = "us-central1"
  gcp_zone       = "us-central1-a"
  gcp_project_id = "proud-curve-399517"
  gcp_credentials_file = file("./gcp_key.json")
}

