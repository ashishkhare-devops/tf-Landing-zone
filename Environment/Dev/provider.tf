terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.0.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "dev-rg1"
    storage_account_name = "devstorageaccountsa1"
    container_name       = "devcontainer1"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}