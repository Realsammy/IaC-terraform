module "gcp_infrastructure" {
  source = "./gcp_vm"

  # Input variables
  vm_name               = var.vm_name
  vm_username           = var.vm_username
  #vm_machine_type       = var.machine_type
  environment           = var.environment
  vm_disk_size          = var.vm_disk_size
  gcp_region            = var.gcp_region
  gcp_zone              = var.gcp_zone
  gcp_project_id        = var.gcp_project_id
  gcp_credentials_file  = var.gcp_credentials_file
}
