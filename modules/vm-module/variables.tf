variable "vm_name" {
  type        = string
  description = "VM name"
  default     = "svil"
}



variable "region" {
  type        = string
  description = "Regione GCP"
  default     = "us-central1"
}

variable "zone" {
  type        = string
  description = "VM zone"
  default     = "us-central1-c"
}

variable "machine_type" {
  type        = string
  description = "Taglio VM"
  default     = "e2-small"
}

variable "project_id" {
  type        = string
  description = "ID del progetto GCP"
  default     = "progettocloud-473207"
}

variable "tags" {
  type        = list(string)
  description = "VM Tags"
  default     = []
}

variable "vm_image" {
  type        = string
  description = "Immagine della VM"
}

variable "boot_size" {
  type        = number
  description = "Dimensione del disco di boot in GB"
}

variable "boot_type" {
  type        = string
  description = "Tipo di disco di boot (es. pd-standard, pd-ssd)"
}

variable "network" {
  type        = string
  description = "Nome della rete"
  default     = "default"
}


variable "email_service_account" {
  type        = string
  description = "Email del service account"
  default     = "1075799113945-compute@developer.gserviceaccount.com"
}

variable "gcp_services_list" {

  type        = list(string)
  description = "Servizi GCP da abilitare"
  default     = [
    "compute.googleapis.com",
    "iam.googleapis.com"
  ]
}

variable "scopes"{
    description = "Servizi GCP da abilitare"
    type        = any
    default     = "https://www.googleapis.com/auth/cloud-platform"
}
