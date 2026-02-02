resource "random_integer" "suffix" {
  min = 1
  max = 9
}

# validated this root
data "azurerm_client_config" "current" {}


resource "azurerm_resource_group" "globalsend_main_rg" {
  name     = "globalsend-${var.environment}-rg-${random_integer.suffix.result}"
  location = var.location

}

module "storage-account" {
  source              = "./modules/storage-account"
  resource_group_name = azurerm_resource_group.globalsend_main_rg.name
  location            = var.location
  storage_account_name  = lower("${var.storage_account_name}${var.environment}${random_integer.suffix.result}")


}

module "app-service" {
  source                = "./modules/app-service"
  resource_group_name   = azurerm_resource_group.globalsend_main_rg.name
  location              = var.location
  app_service_plan_name = "${var.app_service_plan_name}-${var.environment}-${random_integer.suffix.result}"
  app_service_name      = "${var.app_service_name}-${var.environment}-${random_integer.suffix.result}"
  zip_blob_url          = module.storage-account.zip_blob_url

}

