resource "random_pet" "rg-name" {
  prefix    = var.resource_group_name_prefix
}

resource "azurerm_resource_group" "rg" {
  name      = random_pet.rg-name.id
  location  = var.resource_group_location
}

resource "azurerm_virtual_network" "example" {
name = "myvnet"
resource_group_name = azurerm_resource_group.rg.name
location = azurerm_resource_group.rg.location
address_space = ["10.0.0.0/16"]
}