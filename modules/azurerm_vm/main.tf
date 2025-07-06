# resource "azurerm_network_interface" "nic" {
#   name                = var.nic_name #"shashi-nic"
#   location            =var.location #"centralIndia"
#   resource_group_name = var.resource_group_name #shashi_rg

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     =  data.azurerm_subnet.subnet.id #var.subnet_id #"/subscriptions/82fd7ed6-f9d4-4678-96e3-48e714d4efe7/resourceGroups/rg-todo/providers/Microsoft.Network/virtualNetworks/vnet-todo/subnets/subnet-todo"
#     private_ip_address_allocation = "Dynamic" # run time me ip address assign hoga
#     public_ip_address_id          = data.azurerm_public_ip.pip.id   #var.pip_id 
#   } 
# }
# resource "azurerm_linux_virtual_machine" "vm" {
#   name                = var.vm_name #"shashivm"
#   resource_group_name = var.resource_group_name #"shashi_rg"
#   location            = var.location #"cenralIndia"
#   size                = var.vm_size #"Standard_F2"
#   admin_username      = data.azurerm_key_vault_secret.vm_username.value#"devopsadmin"
#   admin_password      = data.azurerm_key_vault_secret.vm_password.value #"shashi@123"
#   disable_password_authentication = false # agr hum ssh use nahi krte hai to isko false us krte hai
  
#   network_interface_ids = [
#     azurerm_network_interface.nic.id, #implicit dependency on the NIC
#   ]
# # nic banate samay jo block me pass krte hai use argument kahte hai aur jo banane ke bad 
# # aata hai use attribute kahte hai isliye jo vm me jo nic Id implicit ke pass kr rhhe wo attribute hai.
# #ek computer per multiple nic attach ho sakta hai lekin ek nic per sirf ek hi vm attach ho sakta hai

# #-----------------------------------------------
# #custom data ke through hum apne vm per kuch bhi install kar sakte hai/issme hum nginx install kar rahe hai
# #custom data ko base64 me encode karna padta hai
# #custom data ko base64 me encode karne ke liye hume base64encode function

# custom_data = base64encode(<<-EOF
#   #!/bin/bash
#   apt-get update -y
#   apt-get install nginx -y
#   systemctl start nginx
#   systemctl enable nginx
#   EOF
#   )

# #-----------------------------------------------
#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {
#     publisher = var.image_publisher #"Canonical" # publisher id from azure marketplace
#     offer     = var.image_offer #"0001-com-ubuntu-server-jammy" # offer id from azure marketplace
#     sku       = var.image_sku #"22_04-lts" # sku id from azure marketplace
#     version   = "latest"
#   } 

# } # kaun sa o/s apne vm per install hoga wo sab image ke through hi hota hai