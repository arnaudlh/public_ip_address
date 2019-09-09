variable "ip_address_name" {
  description = "(Required) name of the IP address to be created"
}

variable "location" {
  description = "(Required) Location of the IP address to be created"
}

variable "tags" {
  description = "(Required) Tags to be applied to the IP address to be created"
  
}

variable "ip_address_rg" {
  description = "(Required) Resource group name of the IP address to be created"
  
}

variable "diagnostics_map" {
  description = "(Required) Storage account and Event Hub for the IP address diagnostics"  

}

variable "log_analytics_workspace" {
  description = "(Required) Log Analytics data for the IP address diagnostics"
  
}

variable "allocation_method" {
  description = "(Required) Allocation method of the public IP Address - static or dynamic"  

}

variable "sku" {
  description = "(Required) SKU of the IP Address to be created - either basic or premium"  

}

variable "dns_prefix" {
  description = "(Optional) Prefix for DNS name of the public IP address to be deployed" 

}

variable "timeout" {
  description = "(Optional) Timeout for the public IP address to be deployed"  
  default = 4
}

variable "zones" {
  description = "(Required) Azure Availability Zone where the public IP address will be deployed"  
}

variable "opslogs_retention_period" {
  description = "(Optional) Number of days to keep operations logs inside storage account"
  default = 60
}