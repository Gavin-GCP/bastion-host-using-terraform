terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.58.0"
    }
  }
  backend "gcs" {
    bucket  = "dhruv-bastion-host-state-files"
    prefix  = "terraform-bastion-host"
  }
}


provider "google" {
  project     = "engineer-cloud-nprod"
  region      = "us-central1"
  zone        = "us-central1-c"
}
