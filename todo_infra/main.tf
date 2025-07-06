module "resource_group" {
  source = "../modules/azurerm_resource_group"
  resource_group_name = "shashi_rg"
  location = "centralIndia"
}

module "storage_account" {
  depends_on = [ module.resource_group ] # firstly create resource group then create storage account that's why we put explicit dependecy on resource group
  source = "../modules/azurerm_storage_account"
  storageaccountname = "storage123shashi"
  resource_group_name = "shashi_rg"
  location = "centralIndia"
}
module "vnet" {
    depends_on = [ module.resource_group ] # firstly create resource group then create vnet that's why we put explicit dependecy on resource group
    source = "../modules/azurerm_vnet"
    virtual_network_name = "vnet-todoapp"
    resource_group_name = "shashi_rg"
    location = "centralIndia"
    
    address_space = ["10.0.0.0/16"]

}

# module "frontend_subnet" {
#     depends_on = [ module.vnet ]
#     source = "../modules/azurerm_subnet"
#     subnet_name = "frontend-subnet"
#     resource_group_name = "shashi_rg"
#     virtual_network_name = "vnet-todoapp"
#     address_prefixes = ["10.0.1.0/24"]
# }


# module "backend_subnet" {

#     depends_on = [ module.vnet ]
#     source = "../modules/azurerm_subnet"
#     subnet_name = "backend-subnet"
#     resource_group_name = "shashi_rg"
#     virtual_network_name = "vnet-todoapp"
#     address_prefixes = ["10.0.2.0/24"]
# }

# module "frontend_public_ip" {
#     # depends_on = [ module.frontend_subnet ]
#     source              = "../modules/azurerm_public_ip"
#     public_ip_name      = "shashi-pip-frontend"
#     resource_group_name = "shashi_rg"
#     location            = "centralIndia"
#     allocation_method   = "Static"
# }

# # module "frontend_vm" {

# #     depends_on = [module.frontend_subnet , module.keyvault ]
# #     source = "../modules/azurerm_vm"
# #     vm_name = "frontend-vm"
# #     resource_group_name = "shashi_rg"
# #     location            = "centralIndia"
# #     vm_size             = "Standard_B1s"
# #     # admin_username      = "devopsadmin"
# #     # admin_password      = "shashi@123" # use a secure password in production
# #     image_publisher     = "Canonical"
# #     image_offer         = "0001-com-ubuntu-server-jammy"
# #     image_sku           = "22_04-lts"
# #     nic_name            = "frontend-nic"
# #     # subnet_id           = "/subscriptions/82fd7ed6-f9d4-4678-96e3-48e714d4efe7/resourceGroups/shashi_rg/providers/Microsoft.Network/virtualNetworks/vnet-todoapp/subnets/frontend-subnet"
# #     # pip_id              = "/subscriptions/82fd7ed6-f9d4-4678-96e3-48e714d4efe7/resourceGroups/shashi_rg/providers/Microsoft.Network/publicIPAddresses/shashi-pip-frontend"
# #     public_ip_name      = "shashi-pip-frontend"
# #     virtual_network_name = "vnet-todoapp"
# #     subnet_name          = "frontend-subnet"
# #     key_vault_name          = "shashikitijori-1"
    
# # }

# module "backend_public_ip" {
#     depends_on = [ module.frontend_subnet ]
#     source              = "../modules/azurerm_public_ip"
#     public_ip_name      = "shashi-pip-backend"
#     resource_group_name = "shashi_rg"
#     location            = "centralIndia"
#     allocation_method   = "Static"
# }


# # module "backend_vm" {
# #     depends_on = [module.backend_subnet , module.keyvault ]
# #     source  = "../modules/azurerm_vm"
# #     vm_name             = "backend-vm"
# #     resource_group_name = "shashi_rg"
# #     location            = "centralIndia"
# #     vm_size             = "Standard_B1s"
# #     # admin_username      = "devopsadmin"
# #     # admin_password      = "shashi@123" # use a secure password in production
# #     image_publisher     = "Canonical"
# #     image_offer         = "0001-com-ubuntu-server-focal" # pytodobackendapp se liya hai
# #     image_sku           = "20_04-lts" # pytodobackendapp se liya hai
# #     nic_name            = "backend-nic"
# #     # subnet_id           = "/subscriptions/82fd7ed6-f9d4-4678-96e3-48e714d4efe7/resourceGroups/shashi_rg/providers/Microsoft.Network/virtualNetworks/vnet-todoapp/subnets/backend-subnet"
# #     # pip_id              = "/subscriptions/82fd7ed6-f9d4-4678-96e3-48e714d4efe7/resourceGroups/shashi_rg/providers/Microsoft.Network/publicIPAddresses/shashi-pip-backend"
# #     public_ip_name      = "shashi-pip-backend"
# #     virtual_network_name = "vnet-todoapp"
# #     subnet_name         = "backend-subnet"
# #     key_vault_name      = "shashikitijori-1"
   
# # }
  

# module "sql_server" {
#     # depends_on = [module.backend_vm ]
#     source = "../modules/azurerm_sql_server"
#     sql_server_name     = "shashisqlserver"
#     resource_group_name = "shashi_rg"
#     location            = "centralIndia"
#     administrator_login = "sqladmin"
#     administrator_login_password = "shashi@123" # use a secure password in production
# }

# module "sql_database" {
#     depends_on = [module.sql_server ]
#     source = "../modules/azurerm_sql_database"
#     sql_database_name = "tododb"
#     sql_server_name     = "shashisqlserver"
#     resource_group_name = "shashi_rg"
#     # sql_server_id = "/subscriptions/82fd7ed6-f9d4-4678-96e3-48e714d4efe7/resourceGroups/shashi_rg/providers/Microsoft.Sql/servers/shashisqlserver"
#    # sql server me jakr uska resource id copy krna hai
# }

# module "keyvault" {
#     depends_on = [ module.resource_group ]
#   source              = "../modules/azurerm_key_vault"
#   key_vault_name      = "shashikitijori-1"
#   location            = "centralindia"
#   resource_group_name = "shashi_rg"
#   vm_username         = "devopsadmin"
#   vm_password         = "shashi@123"
# }
