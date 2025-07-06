resource "azurerm_public_ip" "pip" {
  name                = var.public_ip_name #"shashi-pip"
  resource_group_name = var.resource_group_name #"shashi_rg"
  location            = var.location #"centralIndia"
  allocation_method   = var.allocation_method #"Static"

  tags = {
    environment = "Production"
  }
}