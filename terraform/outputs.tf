output "resource_group_name" {
  description = "The name of the resource group created."
  value       = azurerm_resource_group.rg.name
}

output "storage_account_name" {
  description = "The name of the storage account created."
  value       = azurerm_storage_account.storage.name
}

output "consumption_plan_name" {
  description = "The name of the consumption plan created."
  value       = azurerm_service_plan.plan.name
}

output "function_app_name" {
  description = "The name of the Function App created."
  value       = azurerm_windows_function_app.function_app.name
}

output "application_insights_name" {
  description = "The name of the Application Insights resource created."
  value       = azurerm_application_insights.app_insights.name
}