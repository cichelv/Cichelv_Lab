variable "config_path" {
  description = "Percorso dei file JSON"
  type        = string
  default     = "vm"
}

locals {
  config_files = fileset(var.config_path, "*.json")
  configs = {
    for file in local.config_files :
    file => jsondecode(file("${var.config_path}/${file}"))
  }
}

resource "google_compute_instance" "vm" {
  for_each = local.configs

  name         = each.value.name
  machine_type = each.value.machine_type
  zone         = each.value.zone
  tags         = each.value.tags
  labels       = each.value.labels

  boot_disk {
    initialize_params {
      image = each.value.boot_disk.image
      size  = each.value.boot_disk.size
      type  = each.value.boot_disk.type
    }
  }

  network_interface {
    network       = each.value.network_interface.network
    access_config  {}
  }

  service_account {
    email  = each.value.service_account.email
    scopes = each.value.service_account.scopes
  }
}

