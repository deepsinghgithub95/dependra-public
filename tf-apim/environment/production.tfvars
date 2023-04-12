env                       = "prod"
location                  = "west Europe"
vnet_address_space        = "10.2.5.0/24"
df_subnet_address_space   = ["10.2.5.0/26"]
apim_subnet_address_space = ["10.2.5.64/26"]
apim_sku                  = "Developer"
tags = {
  Environment = "production"
  ProductName = "apim-resource"
  Owner       = "Ewings"
}