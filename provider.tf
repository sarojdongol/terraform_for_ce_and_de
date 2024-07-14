terraform {
  required_version = ">= 0.12" # Specify the required Terraform version constraint
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0, < 4.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {
    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}