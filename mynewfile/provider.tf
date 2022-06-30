terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id   = "02953bee-ef8c-472d-8407-5dc39d59c79c"
  tenant_id         = "438c81e2-2a47-4d31-b7dc-12b1069bcfda"
  client_id         = "dea217e3-2f4b-4d62-9d79-7626e46f89af"
  client_secret     = "4L.8Q~_WgWSA1_ciYqsaoG6CS.4HBbxoPVagaayd"

}