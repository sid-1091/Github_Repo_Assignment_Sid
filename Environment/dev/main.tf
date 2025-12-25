module "resource_group" {
  source = "../../Modules/Resource_group"
  rgs    = var.rgs-dev
}
module "vitual_network" {
    source = "../../Modules/Virtual_network"
    vnets  = var.vnets-dev
}
module "subnet" {
  source = "../../Modules/Subnet"
  subnets = var.subnets-dev
}
module "public_ip" {
  source = "../../Modules/Public_IP"
  pips   = var.pips-dev
}
module "virtual_machine" {
    depends_on = [ module.subnet, module.public_ip  ]
    source = "../../Modules/Virtual_Machine"
    vms= var.vms-dev
}