terraform {
  required_version = "~> 1.10"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }


  ## below block defines the backend that contains tfstate for this deployment
  backend "azurerm" {
    subscription_id      = "ad6f62ba-74ae-4f03-8123-5431c364621d"
    resource_group_name  = "bdosubvendrg"
    storage_account_name = "bdosubsa123"
    container_name       = "tfstate"
    key                  = "bdosubvend.tfstate"
  }


}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  use_oidc = true
  # subscription_id = "ad6f62ba-74ae-4f03-8123-5431c364621d"

}