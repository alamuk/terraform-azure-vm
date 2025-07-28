variable "nic_name" {
  description = "Name of the network interface"
  type        = string
}

variable "location" {
  description = "Azure region where the NIC will be created"
  type        = string
}

variable "rg_name" {
  description = "Resource group name"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID to attach the NIC to"
  type        = string
}

variable "nsg_id" {
  description = "Optional NSG ID to associate with the NIC"
  type        = string
  default     = null
}
