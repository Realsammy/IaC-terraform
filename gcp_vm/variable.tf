variable "vm_name" {
  type    = string
  default = "infrastructure-vm"  
}
variable "vm_username" {
  type    = string
  default = "devops" 
}

variable "machine_type" {
  type    = string
  default = "n1-standard-1" 
}
variable "environment" {
  type    = string
  default = "compute" 
}

variable "vm_disk_size" {
  type    = number
  default = 30  
}

variable "gcp_region" {
  type    = string
  default = "us-central1"  
}

variable "gcp_zone" {
  type    = string
  default = "us-central1-a"  
}

variable "gcp_project_id" {
  type    = string
  default = "proud-curve-399517"  
}

variable "gcp_credentials_file" {
  type    = string
  default = "./gcp_key.json"  
}
