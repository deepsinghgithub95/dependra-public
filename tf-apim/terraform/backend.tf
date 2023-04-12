terraform {
  required_version = "1.4.4"
  required_providers {
    azurerm = "2.52.0"
  }
}

provider "azurerm" {
  features {}
}

#terraform {
# backend "azurerm" {}
#}
