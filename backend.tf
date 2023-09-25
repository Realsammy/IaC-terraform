#terraform {
 # backend "http" {
 #   }
#}

terraform {
  backend "gcs" {
    bucket     = "remote_terraform_state2"  # Replace with your desired bucket name
    prefix     = "tf_state"          # Optionally, specify a prefix for state file
    credentials = "gcp_key.json"     # Provide the path to your GCP service account key JSON file
  }
}


