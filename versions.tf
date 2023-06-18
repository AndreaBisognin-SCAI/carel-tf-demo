terraform {
  required_version = "~>1.4.2"
  required_providers {
    azurerm = {
      version = "~> 3.57.0"
      source  = "hashicorp/azurerm"
    }
    random = {
        version = "~> 3.5.1"
        source = "hashicorp/random"
    }
  }
  backend "azurerm" {
    resource_group_name  = "terraform"
    storage_account_name = "scaiitectfstate"
    container_name       = "puntonet1"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {
  }
}
