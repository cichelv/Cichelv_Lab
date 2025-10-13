terraform {
  #backend "gcs" {
  #  bucket  = "tf-state-svil"
   # prefix  = "terraform/state"
  #}
  required_providers {
    google ={
    source  = "hashicorp/google"
    version = "~>5.0"    
    }
  }
}
