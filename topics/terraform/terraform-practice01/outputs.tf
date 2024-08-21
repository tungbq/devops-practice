output "vm_public_ip" {
  description = "The public IP address of the Virtual Machine"
  value       = module.vm.public_ip_address
}
