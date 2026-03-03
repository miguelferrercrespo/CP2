terraform {
  required_version = ">= 1.6.0"

  required_providers {
    # provider recursos azure.
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
    # par de claves para la máquina
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}