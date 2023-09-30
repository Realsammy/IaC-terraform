terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.0.0"
    }
    local = {
      source = "hashicorp/local"
      version = "2.4.0"
    }
  }
}


provider "google" {
 
  credentials = file("./gcp_key.json")  
  project     = "terrafor4gcp"                      
  region      = "us-central1"                                
  zone        = "us-central1-b"
}
