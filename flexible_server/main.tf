resource "google_sql_database_instance" "server" {
  name             = var.db_name
  database_version = var.db_version
  region           = var.db_region

  settings {
    tier = var.db_sku_name  # Specify your desired GCP instance tier (e.g., db-custom-1-3840)
  }

  backend_type = "SECOND_GEN"  # You can change this to "FIRST_GEN" or "EXTERNAL" if needed

  deletion_protection = false  # Enable if needed
}
