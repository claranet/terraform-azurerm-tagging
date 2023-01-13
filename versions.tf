terraform {
  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 1.31"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 2"
    }
  }
}
