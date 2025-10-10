resource "google_compute_instance" "default" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.vm_image 
      size = var.boot_size
      type = var.boot_type
    }
  }
  
  network_interface {
    network = var.network
    access_config {
    }
  }

  service_account {
    email = var.email_service_account
    scopes = [var.scopes]

  }
}

resource "google_project_service" "enabled_services" {
  for_each = toset(var.gcp_services_list)

  project = var.project_id
  service = each.key
}
