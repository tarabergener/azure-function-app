✅ Prerequisites

1. Azure CLI: 2.86.0
   - Download Azure CLI using Powershell command (winget install --exact --id Microsoft.AzureCLI)
   - Check Azure CLI version using "az version"

2. Terraform version: v1.15.4
   - Download Terraform and add it as an environment variable
   - Check Terraform version using "terraform version"

3. Azure Functions Core Tools (if used)

✅ Deployment Steps
1. Authenticate to Azure

   - Run "az login" to authenticate to Azure 
   - Enter proper credentials for subscription

2. Initialize Terraform

   - Run "terraform init"

3. Apply Terraform

   - Run "terraform fmt" to format the changes
   - Run "terraform plan" to check/verify changes
   - Run "terraform apply" to apply changes to Azure

4. Deploy the function code

✅ Validation

Example curl command or browser URL
Expected “Hello World” response

✅ Cleanup

Instructions to remove all created resources
