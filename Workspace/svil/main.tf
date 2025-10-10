
module "vm-module" {
  source = "git::https://github.com/cichelv/Cichelv_Lab.git//modules/vm-module?ref=Template"

zone =var.zone
machine_type = var.machine_type
project_id = var.project_id

}