module "vm-module" {

source = "https://github.com/cichelv/Cichelv_Lab/tree/Template/modules/vm-module"

zone =var.zone
machine_type = var.machine_type
project_id = var.project_id

}