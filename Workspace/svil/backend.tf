terraform {
  backend "gcs" {
    bucket  = "tf-state-svil"
    prefix  = "terraform/state"
  }
  required_providers {
    google ={
    version = "~>5.0"    
    }
  }
}
