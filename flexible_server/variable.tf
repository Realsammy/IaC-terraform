variable "db_rg" {
  type = string
  description = "This is the resource group of the Azure flexible server"
}

variable "db_name" {
  type = string
  description = "The name of the Azure flexible server"
}

variable "db_admin_login" {
  type = string
  description = "The Administator Username for the Azure flexible server"
}

variable "db_location" {
  type = string
  description = "The location of the Azure flexible server"
}

variable "db_grow" {
  type = bool
  description = "Should Storage Auto Grow be enabled?"
  default = true
}

variable "db_iops" {
  type = number
  description = "The storage IOPS for the MySQL Flexible Server. Possible values are between 360 and 20000"
  default = 426
}

variable "db_size_gb" {
  type = number
  description = "The max storage allowed for the MySQL Flexible Server. Possible values are between 20 and 16384"
  default = 42
}

variable "db_backup_retention_days" {
  type = number
  description = "The backup retention days for the MySQL Flexible Server. Possible values are between 1 and 35 days. Defaults to 7"
  default = 7
}

variable "db_geo_redundant_backup" {
  type = bool
  description = "Should geo redundant backup enabled? Defaults to false. Changing this forces a new MySQL Flexible Server to be created"
  default = false
}

variable "db_replication_role" {
  type = string
  description = "Replicate data from an Azure Database for PostgreSQL server to a read-only replica"
  default = "None"
}

variable "db_sku_name" {
  type = string
  description = "The SKU Name for the MySQL Flexible Server. It should start with SKU tier B (Burstable), GP (General Purpose), MO (Memory Optimized) like B_Standard_B1s"
}

variable "db_version" {
  type = string
  description = "The version of the MySQL Flexible Server to use. Possible values are 5.7, and 8.0.21. Changing this forces a new MySQL Flexible Server to be created."
  default = "5.7"
}

variable "db_zone" {
  type = string
  description = "Specifies the Availability Zone in which this MySQL Flexible Server should be located. Possible values are 1, 2 and 3"
  default = "2"
}
