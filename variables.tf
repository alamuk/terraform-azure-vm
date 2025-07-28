variable "location" {}
variable "rg_name" {}
variable "vnet_name" {}
variable "subnet_name" {}
variable "address_space" {
  type = list(string)
}
variable "subnet_prefix" {
  type = list(string)
}
variable "nsg_name" {}
variable "nic_name" {}
variable "vm_name" {}
variable "vm_size" {
  default = "Standard_B2s"
}
variable "admin_user" {}
variable "admin_password" {
  sensitive = true
}
