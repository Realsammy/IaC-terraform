module "gcp_infrastructure" {
  source = "./gcp_vm"  

  # Input variables
  environment = "compute"
  project_id = "your-project-id"
  zone = "us-west1-a"  
  instance_name = "dev-vm"
  instance_type = "n1-standard-1"  
  disk_size_gb = 30
  ssh_username = "devops"
}
