module "RG" {
 source = "./Resourcegrp"
 rg_name = var.rg_name
}
module "vm" {
 source = "./virtual machine"
}