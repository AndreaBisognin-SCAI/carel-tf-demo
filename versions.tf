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
  }
}

provider "azurerm" {
  features {
  }
}
