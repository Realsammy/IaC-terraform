module "database_server" {
  source = "./flexible_server"  # Update the source path to your GCP SQL module

  # Input variables for the module
  gcp_project_id       = "proud-curve-399517"
  gcp_instance_name    = "user"
  gcp_db_admin_user    = "user"
  gcp_region           = "us-east1"  # Specify your desired GCP region
  gcp_max_storage_gb   = 42
  gcp_instance_tier    = "db-custom-2-4096"  # Specify your desired GCP instance tier
}
