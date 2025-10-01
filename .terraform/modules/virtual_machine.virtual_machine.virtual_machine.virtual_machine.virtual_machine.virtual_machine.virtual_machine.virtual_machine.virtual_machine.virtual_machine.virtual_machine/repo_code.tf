locals {
  vms = {
    for f in fileset("${path.module}/vm", "**/*.json") :
    trimsuffix(f, ".json") => jsondecode(file("${path.module}/vm/${f}"))
  }
}


# Modulo VM zonali
module "virtual_machine" {
  source   = "git::https://github.com/cichelv/Cichelv_Lab.git"
  for_each = { for k, v in local.vms : k => v if lower(v.type) == "" }
}
