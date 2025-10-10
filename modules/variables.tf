variable "project_id" {
description = "Progetto"
type = string
default = "progettocloud-473207"
}

variable "region" {
 description = "Regione GCP"
 type = string
 default = "us-central1"
}

variable "zone" {
description = "Zona GCP"
 type = string
default = "us-central1-c"
}

variable "credential" {
 description = "Percorso al file di credenziali JSON"
 type = string
 default = "/home/cichshirt/terraform/credentials/gcp-key.json"
}
 
variable "mail" {
 description = "service_account_mail"
 type = string
 default = "1075799113945-compute@developer.gserviceaccount.com"
}