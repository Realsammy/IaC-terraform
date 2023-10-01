module "gcp_infrastructure" {
  source         = "./gcp_vm"
  vm_name        = "jupiter"
  vm_username    = "devops"
  environment    = "jupiter-network"
  machine_type   = "n1-standard-1"
  vm_disk_size   = 30
  gcp_region     = "us-central1"
  gcp_zone       = "us-central1-b"
  ssh_user       = "devops"
  pubkey_file    = "./.keys/vm_keys.pub"
 # db_host        = "google_sql_database_instance.jupiter_db.ip_address"
 # db_port        = "3306" 
 # gcp_project_id = ${TF_STATE_OBJECT} #"terrafor4gcp"
 # gcp_credentials_file =${GCP_SERVICE_ACCOUNT_KEY} # file("./gcp_key.json")
}

