variable "env" {
  type        = string
  description = "environment"
  validation {
    condition = contains(["staging",
    "prod"], var.env)
    error_message = "Not Allowed."
  }
}



variable "vnet_address_space" {
  type        = list(string)
  description = "address space for vnet"
}

variable "apim_subnet_address_space" {
  type        = list(string)
  description = "address space for apim subnet"
}

variable "df_subnet_address_space" {
  type        = list(string)
  description = "address space for default subnet"
}

variable "location" {
  type        = string
  description = "Azure region name"
}

variable "apim_sku" {
  type        = any
  description = "sku for apim"

  validation {
    condition = contains(["Consumption",
      "Developer",
      "Basic",
    "Standard", "Premium"], var.apim_sku)
    error_message = "Not Allowed."
  }
}


variable "tags" {
  description = "A mapping of tags to assign to the resources"
  type        = map(string)
  default     = {}
}