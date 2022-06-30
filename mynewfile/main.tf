terraform{
  backend "azurerm" {
    resource_group_name  = "terrarg"
    storage_account_name = "myterrastg"
    container_name       = "tfstatefile"
    key                  = "dev.terraform.tfstate"
  }
}
module "RG" {
  source   ="./modules/RG"
  rgname   = var.rgname
  location = var.location
}
