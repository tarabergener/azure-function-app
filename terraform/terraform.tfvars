location = "centralus"

resource_group_name = "azure-function-app-rg"

storage_account_name = "azurefuncstorbergener01"

consumption_plan_name = "azure-function-app-cp"

function_app_name = "azure-function-bergener01"

application_insights_name = "azure-function-app-ai"

tags = {
  environment = "dev"
  source      = "Terraform"
  owner       = "Tara Bergener"
}