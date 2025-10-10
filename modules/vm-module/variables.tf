
variable "project_id" {}
variable "zone" {}
variable "region" {}
variable "vm_name" {}
variable "machine_type" {}
variable "vm_image" {}
variable "boot_size" {}
variable "boot_type" {}
variable "network" {}
variable "email_service_account" {}
variable "scopes" {}
variable "gcp_services_list" {
  type = list(string)
}

variable "tags" {
  type        = list(string)
  description = "VM Tags"
  default     = []
}
