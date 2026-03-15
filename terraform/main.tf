terraform {
  required_version = ">= 1.6.0"

  required_providers {
    # provider recursos azure.
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
    # Declara el provider TLS de Terraform
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
  }
}

# Configura el provider de Azure Resource Manager
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}