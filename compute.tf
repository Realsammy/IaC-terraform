module "gcp_infrastructure" {
  source = "./gcp_vm"

  # Input variables
  vm_name            = var.my_vm_name
  vm_username        = var.my_vm_username
  vm_machine_type    = var.my_vm_machine_type
  environment        = var.my_environment
  vm_disk_size       = var.my_vm_disk_size
  gcp_region         = var.my_gcp_region
  gcp_zone           = var.my_gcp_zone
  gcp_project_id     = var.my_gcp_project_id
  gcp_credentials_file = var.my_gcp_credentials_file
}
