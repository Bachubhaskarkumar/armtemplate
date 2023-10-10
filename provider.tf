terraform {
  required_version = ">=1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}
provider "azurerm" {
    features {}
    subscription_id = "567f5ab0-a729-4ddb-ac5c-b4f56c90d2a0"
    client_id = "c7ebcc11-98a5-4aeb-be67-779066c77905"
    client_secret = "Qy58Q~RHbdDxQV8l1VvrshxDuGnc56.xcYPXlcgd"
    tenant_id = "148b930c-dd70-48f7-a45d-8e991607a377"
}

