module "resource_group" {
  source = "../../module/azurerm_resource_group"
  rgs    = var.resource_group

}

module "storage_account" {
  depends_on = [module.resource_group]
  source     = "../../module/azurerm_storeage_account"
  sa         = var.storage_account
}

module "storage_container" {
  depends_on = [module.storage_account]
  source     = "../../module/azurerm_storage_container"
  ctn        = var.storage_container
}