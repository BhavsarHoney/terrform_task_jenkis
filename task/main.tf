
data "azurerm_resource_group" "rg_name" {
  name = var.resource_group_name
  #location = var.resource_group_location
}
resource "azurerm_storage_account" "example" {
  name                     = "taskhani"
  resource_group_name      = data.azurerm_resource_group.rg_name.name
  location                 = data.azurerm_resource_group.rg_name.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    Resource_Owner : "Haniben.bhavsar@einfochips.com"
    Sub_Business_Unit : "PES-IA"
    Business_Unit : "einfochips"
    Project_Name : "Training and learning"
    Create_Date : "5 march 2024"
  }
}