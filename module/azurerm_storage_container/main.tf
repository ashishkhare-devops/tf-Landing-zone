resource "azurerm_storage_container" "cnt" {
  for_each              = var.ctn
  name                  = each.value.name
  container_access_type = each.value.container_access_type
  storage_account_id    = data.azurerm_storage_account.sa[each.key].id
}