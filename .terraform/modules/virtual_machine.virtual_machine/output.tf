output "virtual_machine_output" {
  value = {
    for k, v in module.virtual_machine : k => {
      vm = v.vm
    }
  }
}
