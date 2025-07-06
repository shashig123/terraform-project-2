# data "azurerm_client_config" "current" {} #

# resource "azurerm_key_vault" "kv" {
#   name                        = var.key_vault_name #"shashikitijori"
#   location                    = var.location #"centralindia"
#   resource_group_name         = var.resource_group_name #"shashi_rg"
#   tenant_id                   = data.azurerm_client_config.current.tenant_id #"a771f38d-5656-4efa-ba2e-bb2b9b9d392f"
#   sku_name                    = "standard"
#   soft_delete_retention_days  = 7
#   purge_protection_enabled    = false
#   enable_rbac_authorization = true

# }

# resource "azurerm_key_vault_secret" "vm_username" {
#   name         = "vm-username"
#   value        = var.vm_username # use a secure username in production
#   key_vault_id = azurerm_key_vault.kv.id
# }
# resource "azurerm_key_vault_secret" "vm_password" {

#   name         = "vm-password"
#   value        = var.vm_password # use a secure password in production
#   key_vault_id = azurerm_key_vault.kv.id
# }


