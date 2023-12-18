data "azurerm_resource_group" "terraformstorage" {
  name = "DevOpsSecurity"
}

resource "azurerm_storage_account" "terraformaccount1" {
  name                     = "devopssecurity1"
  resource_group_name      = data.azurerm_resource_group.terraformstorage.name
  location                 = "Central US"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  enable_https_traffic_only = false
  public_network_access_enabled = true

  tags = {
    "mapping_tag" = "419a05bc-1969-431c-83b1-af24348ad640"
  }
}
