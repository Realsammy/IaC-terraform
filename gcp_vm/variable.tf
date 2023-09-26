variable "vm_name" {
  type    = string
}

variable "vm_username" {
  type    = string
}

variable "environment" {
  type    = string
}

variable "vm_disk_size" {
  type    = number
}

variable "gcp_region" {
  type    = string
}

variable "machine_type" {
  type    = string
  # default = "n1-standard-1"  # You can provide a default value if needed
}

variable "gcp_zone" {
  type    = string
}

variable "gcp_project_id" {
  type    = string
}

variable "gcp_credentials_file" {
  type    = string
}
