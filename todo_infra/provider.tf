terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.34.0"
    }
   }
    backend "azurerm" {
    resource_group_name = "rg-backend"                # Can also be set via `ARM_RESOURCE_GROUP_NAME` environment variable.
    tenant_id            = "a771f38d-5656-4efa-ba2e-bb2b9b9d392f"  # Can also be set via `ARM_TENANT_ID` environment variable.
    storage_account_name = "stgabackend1"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "shashicontainer"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "todo.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
 }

provider "azurerm" { 
    features {}
# Configuration options
subscription_id = "82fd7ed6-f9d4-4678-96e3-48e714d4efe7"
}