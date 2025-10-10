output "vm_name" {
  description = "Nome della VM"
  value       = google_compute_instance.default.name
}

output "vm_zone" {
  description = "Zona della VM"
  value       = google_compute_instance.default.zone
}

output "vm_external_ip" {
  description = "IP esterno della VM"
  value       = google_compute_instance.default.network_interface[0].access_config[0].nat_ip
}

output "vm_machine_type" {
  description = "Tipo di macchina"
  value       = google_compute_instance.default.machine_type
}

output "vm_image" {
  description = "Immagine usata per la VM"
  value       = google_compute_instance.default.boot_disk[0].initialize_params[0].image
}

output "service_account_email" {
  description = "Email del service account"
  value       = google_compute_instance.default.service_account[0].email
}

output "project_id" {
  description = "ID del progetto GCP"
  value       = var.project_id
}
