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
    subscription_id = "b1627956-95e4-4381-86e1-629f221ce542"
    client_id = "9b167e02-3cf7-4f9d-acc2-4f89eaeb7303"
    client_secret = "2ep8Q~ei2gyOyJr8yncDMN_ap5yyK5jQrcnOpboq"
    tenant_id = "cfb84c28-63d7-4fe1-91bc-bb133d2076a1"
}

