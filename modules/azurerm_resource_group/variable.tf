variable "resource_group_name" {
  description = "The name of the resource group in which the virtual network will be created."
  type        = string
  
}
variable "location" {
  description = "The Azure region where the virtual network will be created."
  type        = string
}