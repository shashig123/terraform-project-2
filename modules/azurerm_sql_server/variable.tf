# variable "sql_server_name" {
#   description = "The name of the SQL server."
#   type        = string  
  
# }   
# variable "resource_group_name" {
#   description = "The name of the resource group in which the SQL server will be created."
#   type        = string  
  
# }
# variable "location" {
#   description = "The Azure region where the SQL server will be created."
#   type        = string      
# }
# variable "administrator_login" {
#   description = "The administrator login for the SQL server."
#   type        = string  
# }
# variable "administrator_login_password" {
#   description = "The administrator password for the SQL server."
#   type        = string
#   sensitive   = true # This will hide the password in the Terraform output
# }