terraform {
  required_version = ">= 1.8.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.25.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.7.1"
    }
  }
}