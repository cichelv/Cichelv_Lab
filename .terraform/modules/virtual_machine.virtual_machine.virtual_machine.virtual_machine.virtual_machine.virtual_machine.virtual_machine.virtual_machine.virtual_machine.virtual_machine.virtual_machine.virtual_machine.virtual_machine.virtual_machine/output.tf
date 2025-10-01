output "virtual_machine_new_output" {
  value = {
    for k, v in module.virtual_machine : k => {
      vm = v.vm
    }
  }
}

output "virtual_machine_output" {
  value = merge(
    { for k, v in module.virtual_machine : k => { vm = v.vm } },
    { for k, v in module.virtual_machine : k => { vm = v.vm } }
  )
}
