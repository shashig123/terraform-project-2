variable "public_ip_name" {
  description = "The name of the public IP address."
  type        = string
  default     = "shashi-public-ip" # Example default value, can be overridden
  
}

variable "resource_group_name" {
  description = "The name of the resource group in which the public IP address will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the public IP address will be created."
  type        = string
  default     = "centralIndia" # Example default value, can be overridden
  
}
variable "allocation_method" {
  description = "The allocation method for the public IP address (Static or Dynamic)."
  type        = string
  default     = "Static" # Example default value, can be overridden
  
}