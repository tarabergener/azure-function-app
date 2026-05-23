variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "The name of the resource group to create."
  type        = string
  default     = "azure-function-app-rg"
}