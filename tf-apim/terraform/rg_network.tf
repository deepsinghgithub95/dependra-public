resource "azurerm_resource_group" "apim_rg" {
  name     = "rg-${var.env}-apim"
  location = var.location
  tags     = var.tags
}


resource "azurerm_virtual_network" "apim_vnet" {
  name                = "vnet-${var.env}-apim"
  location            = var.location
  resource_group_name = azurerm_resource_group.apim_rg.name
  address_space       = var.vnet_address_space
  tags                = var.tags
}

resource "azurerm_subnet" "default" {
  name                 = "sn-${var.env}-default"
  resource_group_name  = azurerm_resource_group.apim_rg.name
  virtual_network_name = azurerm_virtual_network.apim_vnet.name
  address_prefixes     = var.df_subnet_address_space
}

resource "azurerm_subnet" "apim" {
  name                 = "sn-${var.env}-apim"
  resource_group_name  = azurerm_resource_group.apim_rg.name
  virtual_network_name = azurerm_virtual_network.apim_vnet.name
  address_prefixes     = var.apim_subnet_address_space
  delegation {
    name = "delegation"
    service_delegation {
      name = "Microsoft.ApiManagement/service"
    }
  }

}