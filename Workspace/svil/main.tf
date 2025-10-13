
module "vm-module" {
  source = "git::https://github.com/cichelv/Cichelv_Lab.git//modules/vm-module?ref=Template"

project_id             = "firm-shuttle-473207-q0"
  zone                   = "us-central1-c"
  vm_name                = "test"
  machine_type           = "e2-small"
  vm_image               = "debian-12-bookworm-v20250910"
  boot_size              = 10
  boot_type              = "pd-standard"
  network                = "default"
  email_service_account  = "355663382436-compute@developer.gserviceaccount.com"
  scopes                 = "https://www.googleapis.com/auth/cloud-platform"
  gcp_services_list      = ["compute.googleapis.com", "iam.googleapis.com"]





}
