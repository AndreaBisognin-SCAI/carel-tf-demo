resource "azurerm_resource_group" "rg" {
    name = "${var.BASE_RG_NAME}-${local.random_suffix}"
    location = var.LOCATION
}

resource "azurerm_service_plan" "sp" {
  name                = "${azurerm_resource_group.rg.name}-sp"
  location            = var.LOCATION
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "webapp" {
    name = "${azurerm_resource_group.rg.name}-webapp"
    resource_group_name = azurerm_resource_group.rg.name
    location = var.LOCATION
    service_plan_id = azurerm_service_plan.sp.id
    site_config {
        always_on = false
        application_stack {
            dotnet_version = "7.0"
        }
    }
}