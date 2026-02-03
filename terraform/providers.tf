# ---------------------------
# Terraform Settings
# ---------------------------
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.58.0"  # Specify the provider version for consistency
    }
  }
}

# ---------------------------
# Azure Provider
# ---------------------------
# Configures the AzureRM provider for Terraform
provider "azurerm" {
  features {}  # Required block, can be extended with resource-specific settings

  # Optional: specify subscription ID if not using default
  # subscription_id = var.subscription_id
}

