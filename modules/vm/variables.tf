variable "vm_name" {
  description = "Name of the Virtual Machine"
  type        = string
}

variable "location" {
  description = "Azure region for the VM"
  type        = string
}

variable "rg_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "vm_size" {
  description = "Size of the Virtual Machine (e.g., Standard_B2s)"
  type        = string
  default     = "Standard_B2s"
}

variable "admin_user" {
  description = "Admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
}

variable "nic_id" {
  description = "ID of the NIC to attach to the VM"
  type        = string
}

# OS Image Variables
variable "image_publisher" {
  description = "Publisher of the image"
  type        = string
  default     = "MicrosoftWindowsServer"
}

variable "image_offer" {
  description = "Offer of the image"
  type        = string
  default     = "WindowsServer"
}

variable "image_sku" {
  description = "SKU of the image"
  type        = string
  default     = "2019-Datacenter"
}
