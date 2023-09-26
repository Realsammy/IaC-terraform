variable "my_vm_name" {
  type    = string
  default = "infrastructure-vm"  
}
variable "my_vm_username" {
  type    = string
  default = "devops" 
}

variable "my_vm_machine_type" {
  type    = string
  default = "n1-standard-1" 
}
variable "my_environment" {
  type    = string
  default = "compute" 
}

variable "my_vm_disk_size" {
  type    = number
  default = 30  
}

variable "my_gcp_region" {
  type    = string
  default = "us-central1"  
}

variable "my_gcp_zone" {
  type    = string
  default = "us-central1-a"  
}

variable "my_gcp_project_id" {
  type    = string
  default = "proud-curve-399517"  
}

variable "my_gcp_credentials_file" {
  type    = string
  default = "./gcp_key.json"  
}
