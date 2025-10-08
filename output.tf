output "vm_names" {
  value = {
    for k, vm in google_compute_instance.vm :
    k => vm.name
  }
}
output "vm_private_ip" {
  value = {
    for k, vm in google_compute_instance.vm :
    trimsuffix(k, ".json") => vm.network_interface[0].network_ip
  }
}
