
locals {
  vms = {
    for f in fileset("${path.module}/vm", "**/*.json") :
    trimsuffix(f, ".json") => jsondecode(file("${path.module}/vm/${f}"))
  }
}


# Modulo VM zonali
module "virtual_machine" {
  source   = "git::https://github.com/cichelv/Cichelv_Lab.git"
  for_each = {
    for k, v in local.vms : k => v
    if lower(v.type) == "zonale"
  }
  # Esempio di variabili passate al modulo
  name           = each.value.name
  zone           = each.value.zone
  machine_type   = each.value.machine_type
  image          = each.value.image
  network        = each.value.network
  tags           = each.value.tags
  boot_disk      = each.value.boot_disk
  labels         = each.value.labels
  service_account = each.value.service_account
  network_interface = each.value.network_interface
}

