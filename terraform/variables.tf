variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "centralus"
}

variable "resource_group_name" {
  description = "The name of the resource group to create."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account to create."
  type        = string
}

variable "consumption_plan_name" {
  description = "The name of the consumption plan to create."
  type        = string
}

variable "function_app_name" {
  description = "The name of the Function App to create."
  type        = string
}

variable "application_insights_name" {
  description = "The name of the Application Insights resource to create."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default = {
    environment = "dev"
    source      = "Terraform"
    owner       = "Tara Bergener"
  }
}