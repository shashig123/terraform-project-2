# variable "resource_group_name" {
#   description = "The name of the resource group in which the virtual machine will be created."
#   type        = string  
  
# }
# variable "location" {
#   description = "The Azure region where the virtual machine will be created."
#   type        = string
  
# }
# variable "vm_name" {
#   description = "The name of the virtual machine."
#   type        = string      
  
# }
# variable "vm_size" {
#   description = "The size of the virtual machine."
#   type        = string
  
# }

# # variable "admin_username" {
# #   description = "The administrator username for the virtual machine."
# #   type        = string  
  
# # }

# # variable "admin_password" {
# #   description = "The administrator password for the virtual machine."
# #   type        = string
# #   sensitive   = true # This will hide the password in the Terraform output
  
# # }
# variable "image_publisher" {
#   description = "The publisher of the image to be used for the virtual machine."
#   type        = string
#   default     = "Canonical" # Example default value, can be overridden
# }   

# variable "image_offer" {
#   description = "The offer of the image to be used for the virtual machine."
#   type        = string
#   default     = "0001-com-ubuntu-server-jammy" # Example default value, can be overridden
# }
# variable "image_sku" {
#   description = "The SKU of the image to be used for the virtual machine."
#   type        = string
#   default     = "22_04-lts" # Example default value, can be overridden
# }
# variable "nic_name" {
#   description = "The name of the network interface."
#   type        = string
#   default     = "shashi-nic" # Example default value, can be overridden
# }
# variable "subnet_name" {
#   description = "The name of the subnet to which the network interface will be connected."
#   type        = string
#   default     = "subnet-todo" # Example default value, can be overridden
# }
# variable "virtual_network_name" {
#   description = "The name of the virtual network to which the subnet belongs."
#   type        = string
#   default     = "vnet-todo" # Example default value, can be overridden
# }
# #----------------------------------------------------------------------------------------------
# # hame subnet ID aur public Id ko hardcode nahi pass krna usko datablock se lakr pass karna hai
# #----------------------------------------------------------------------------------------------
# # variable "subnet_id" {
# #   description = "The ID of the subnet to which the network interface will be connected."
# #   type        = string
# #   default     = "/subscriptions/82fd7ed6-f9d4-4678-96e3-48e714d4efe7/resourceGroups/rg-todo/providers/Microsoft.Network/virtualNetworks/vnet-todo/subnets/subnet-todo" # Example default value, can be overridden
# # }
# # variable "pip_id" {
# #   description = "The ID of the public IP address to be associated with the network interface."
# #   type        = string
# #   default     = "" # Example default value, can be overridden
  
# # }


# variable "public_ip_name" {
#   description = "The name of the public IP address."
#   type        = string
#   default     = "shashi-pip" # Example default value, can be overridden 
  
# }
# variable "key_vault_name" {
#   description = "The name of the Key Vault where secrets are stored."
#   type        = string
#   default     = "shashi-kv" # Example default value, can be overridden

# }
