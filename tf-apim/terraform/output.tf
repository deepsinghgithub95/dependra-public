output "resource_group_name" {
  value       = azurerm_resource_group.apim_rg.name
  description = "name of apim rg"
}

output "api_management_service_name" {
  value = azurerm_api_management.ewings_apim.name
}

output "vnet_name" {
  value = azurerm_virtual_network.apim_vnet.name
}

output "subnet_apim" {
  value = azurerm_subnet.apim.name
}