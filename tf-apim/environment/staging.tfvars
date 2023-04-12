env                       = "staging"
location                  = "west Europe"
vnet_address_space        = ["10.128.30.0/24"]
df_subnet_address_space   = ["10.128.30.0/26"]
apim_subnet_address_space = ["10.128.30.64/26"]
apim_sku                  = "Developer"
tags = {
  Environment = "staging"
  ProductName = "apim-stagingresource"
  Owner       = "Ewings"
}