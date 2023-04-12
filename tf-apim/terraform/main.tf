resource "azurerm_api_management" "ewings_apim" {
  name                 = "apim-${var.env}-ewings"
  location             = var.location
  resource_group_name  = azurerm_resource_group.apim_rg.name
  publisher_name       = "ewings"
  publisher_email      = "admin@ewings.com"
  sku_name             = "${var.apim_sku}_1"
  tags                 = var.tags
  virtual_network_type = "Internal"

  virtual_network_configuration {
    subnet_id = azurerm_subnet.apim.id
  }
}