terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 1.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "=3.4.3"
    }
  }
  backend "azurerm" {
    resource_group_name  = "terraform-storage-rg"
    storage_account_name = "terraformstate0327"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
  }
}


provider "azurerm" {
  features {}
}