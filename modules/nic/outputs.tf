output "nic_id" {
  value = azurerm_network_interface.this.id
}

output "public_ip" {
  value = azurerm_public_ip.this.ip_address
}
