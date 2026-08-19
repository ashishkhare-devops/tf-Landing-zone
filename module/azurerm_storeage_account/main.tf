resource "azurerm_storage_account" "sa" {
    for_each = var.sa
    resource_group_name = each.value.resource_group_name
    name = each.value.name
    location = each.value.location
    account_tier = each.value.account_tier
    account_replication_type = each.value.account_replication_type
  
}