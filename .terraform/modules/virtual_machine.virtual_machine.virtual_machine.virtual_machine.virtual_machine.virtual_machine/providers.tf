terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}
provider "google" {
  credentials = var.credential
  project     = var.project_id
  region      = var.region 
}
