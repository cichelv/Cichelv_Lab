provider "google" {
  credentials = var.credential
  project     = var.project_id
  region      = var.region 
}