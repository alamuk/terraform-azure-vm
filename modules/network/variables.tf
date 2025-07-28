variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string
}

variable "address_space" {
  description = "Address space for the VNet"
  type        = list(string)
}

variable "subnet_prefix" {
  description = "Address prefix for the Subnet"
  type        = list(string)
}

variable "location" {
  description = "Azure region where the resources will be created"
  type        = string
}

variable "rg_name" {
  description = "Resource group name where the network will be created"
  type        = string
}
