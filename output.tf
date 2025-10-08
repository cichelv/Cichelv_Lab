output "vm_names" {
  value = {
    for k, vm in google_compute_instance.vm :
    k => vm.name
  }
}
output "vm_public_ips" {
  value = {
    for k, vm in google_compute_instance.vm :
    trimsuffix(k, ".json") => vm.network_interface[0].access_config[0].nat_ip
  }
}
