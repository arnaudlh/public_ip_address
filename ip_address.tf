resource "azurerm_public_ip" "public_ip" {
  name                      = var.ip_address_name
  location                  = var.location
  resource_group_name       = var.ip_address_rg
  
  allocation_method         = var.allocation_method
  sku                       = var.sku
  domain_name_label         = var.dns_prefix
  idle_timeout_in_minutes   = var.timeout
  zones                     = var.zones

  tags                      = var.tags
}