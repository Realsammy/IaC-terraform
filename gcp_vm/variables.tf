variable "vm_name" {
  type        = string
  description = "The name of the GCP virtual machine"
  default     = "infrastructure-vm"
}

variable "vm_username" {
  type        = string
  description = "The username for the GCP virtual machine"
  default     = "devops"
}

variable "vm_machine_type" {
  type        = string
  description = "The machine type (size) of the GCP virtual machine"
  default     = "n1-standard-1"  # You can change this to match your desired GCP machine type
}

variable "environment" {
  type        = string
  description = "The name of the environment, which is appended to resource names"
}

variable "vm_disk_size" {
  type        = number
  description = "The size of the virtual machine's disk storage (in GB)"
  default     = 30
}

variable "gcp_region" {
  type        = string
  description = "The GCP region where resources will be created"
  default     = "us-central1"  # You can change this to your desired GCP region
}

variable "gcp_zone" {
  type        = string
  description = "The GCP zone where resources will be created"
  default     = "us-central1-a"  # You can change this to your desired GCP zone
}

variable "gcp_project_id" {
  type        = string
  description = "The ID of your Google Cloud Platform (GCP) project"
  # You should provide a default value or set this variable explicitly in your configuration
}

variable "gcp_credentials_file" {
  type        = string
  description = "The path to your GCP service account credentials JSON file"
  # You should provide a default value or set this variable explicitly in your configuration
}
