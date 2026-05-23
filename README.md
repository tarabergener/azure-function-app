✅ Prerequisites
Azure CLI: 2.86.0
1. Download Azure CLI using Powershell command (winget install --exact --id Microsoft.AzureCLI)
2. Check Azure CLI version using "az version"

Terraform version: v1.15.4
1. Download Terraform and add it as an environment variable
2. Check Terraform version using "terraform version"

Azure Functions Core Tools (if used)

✅ Deployment Steps
1. Authenticate to Azure
    a. Run "az login" to authenticate to Azure 
    b. Enter proper credentials for subscription

2. Initialize Terraform
    a. Run "terraform init"

3. Apply Terraform
    a. Run "terraform fmt" to format the changes
    b. Run "terraform plan" to check/verify changes
    c. Run "terraform apply" to apply changes to Azure

4. Deploy the function code

✅ Validation
Example curl command or browser URL
Expected “Hello World” response
✅ Cleanup
Instructions to remove all created resources