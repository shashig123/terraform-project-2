# # data block isliye use hota hai kyuki data block se hum kisi existing(pahle se bana hua ho) resource ki information lete hai
# #vale jo hmum harcode kr rhe the uske jagah data block se le rhe hai
# # data block se jo information lete hai wo immutable hoti hai yani ki usko change nahi kar sakte hai
# # data block se jo information lete hai wo sirf read only hoti hai yani ki usko sirf read kar sakte hai

# data "azurerm_subnet" "subnet" {
#   name                 = var.subnet_name
#   virtual_network_name = var.virtual_network_name #"vnet-todo"
#   resource_group_name  =var.resource_group_name#"shashi_rg"
# }

# data "azurerm_public_ip" "pip" {
#   name                = var.public_ip_name 
#   resource_group_name = var.resource_group_name #"shashi_rg"
# }
# # is key volt me jo secret store hoga usko use karne ke liye hume data block use karna padega 
# # aur issse se jo id milegi wo secret key me use karna padega
# data "azurerm_key_vault" "kv" {
#   name                = var.key_vault_name
#   resource_group_name = var.resource_group_name #"shashi_rg"
  
# }
# # is block se user name aur password ko key vault se lete hai ye frontend aur backend dono ke liye same hai
# # isliye dono ke liye same data block use kar rahe hai isliye dono ke liye alag alag data block nahi banaya hai
# data "azurerm_key_vault_secret" "vm_username" {
#   name         = "vm-username" # ye secret name hai jo key vault me store hoga
#   key_vault_id = data.azurerm_key_vault.kv.id # keyvault ke block ka name hai
# }

# data "azurerm_key_vault_secret" "vm_password" {
#   name         =  "vm-password" # ye secret name hai jo key vault me store hoga
#   key_vault_id = data.azurerm_key_vault.kv.id # keyvault ke block ka name hai
# }