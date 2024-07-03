terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.109.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = "tfstatestorgae"       # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
  #   storage_account_name = "tfstatestoragenetweb" # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
  #   container_name       = "terraform-tfstate"    # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
  #   key                  = "keyvault.tfstate"     # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  # }


}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}