module "resource_group" {
  source       = "./modules/resource_group"
  rg_name      = var.rg_name
  location     = var.location
}

module "network" {
  source       = "./modules/network"
  vnet_name    = var.vnet_name
  subnet_name  = var.subnet_name
  rg_name      = module.resource_group.rg_name
  location     = var.location
  address_space = ["10.0.0.0/16"]
  subnet_prefix = ["10.0.1.0/24"]
}


module "nsg" {
  source     = "./modules/nsg"
  nsg_name   = var.nsg_name
  rg_name    = module.resource_group.rg_name
  location   = var.location
}

module "nic" {
  source     = "./modules/nic"
  nic_name   = var.nic_name
  rg_name    = module.resource_group.rg_name
  location   = var.location
  subnet_id  = module.network.subnet_id
  nsg_id     = module.nsg.nsg_id
}

module "vm" {
  source        = "./modules/vm"
  vm_name       = var.vm_name
  rg_name       = module.resource_group.rg_name
  location      = var.location
  nic_id        = module.nic.nic_id
  admin_user    = var.admin_user
  admin_password = var.admin_password
}


