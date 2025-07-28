output "vnet_id" {
  description = "ID of the created Virtual Network"
  value       = azurerm_virtual_network.this.id
}

output "subnet_id" {
  description = "ID of the created Subnet"
  value       = azurerm_subnet.this.id
}
