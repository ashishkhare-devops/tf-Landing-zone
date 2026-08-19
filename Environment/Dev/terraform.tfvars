resource_group = {
  rg1 = {
    name     = "dev-rg1"
    location = "centralindia"
  }

  rg2 = {
    name     = "dev-rg2"
    location = "eastus"
  }
}

storage_account = {
  sa1 = {
    resource_group_name      = "dev-rg1"
    name                     = "devstorageaccountsa1"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

storage_container = {
  ctn1 = {
    name                  = "devcontainer1"
    storage_account_name  = "devstorageaccountsa1"
    container_access_type = "private"
    resource_group_name   = "dev-rg1"

  }
}