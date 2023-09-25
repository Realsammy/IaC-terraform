terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.0.0"  # Specify your desired version of the GCP provider
    }
    local = {
      source = "hashicorp/local"
      version = "2.4.0"
    }
  }
}

provider "google" {
  # Configuration settings for the GCP provider can be added here
  credentials = file("./gcp_key.json")  # Path to your service account key file
  project     = "proud-curve-399517"                       # Your GCP project ID
  region      = "us-central1"                                # Your desired GCP region
  zone        = "us-central1-a"
}
