
module "vm-module" {
  source = "git::https://github.com/cichelv/Cichelv_Lab.git//modules/vm-module?ref=Template"

project_id             = "progettocloud-473207"
  zone                   = "us-central1-c"
  region                 = "us-central1"
  vm_name                = "istanza-demo"
  machine_type           = "e2-medium"
  vm_image               = "debian-12-bookworm-v20250910"
  boot_size              = 10
  boot_type              = "pd-standard"
  network                = "default"
  email_service_account  = "1075799113945-compute@developer.gserviceaccount.com"
  scopes                 = "https://www.googleapis.com/auth/cloud-platform"
  gcp_services_list      = ["compute.googleapis.com", "iam.googleapis.com"]





}
