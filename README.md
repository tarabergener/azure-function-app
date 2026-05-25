✅ Prerequisites

1. Azure CLI: 2.86.0
   - Download Azure CLI using Powershell command (winget install --exact --id Microsoft.AzureCLI)
   - Check Azure CLI version using "az version"

2. Terraform version: v1.15.4
   - Download Terraform and add it as an environment variable
   - Check Terraform version using "terraform version"

3. Azure Functions Core Tools (if used): 4.11.0
   - Download Azure Function Core Tools 
   - Run command "func init"
   - To test the function on you local, run command "func start"
   - Click link provided

✅ Deployment Steps
1. Authenticate to Azure

   - Run "az login" to authenticate to Azure 
   - Enter proper credentials for subscription

2. Initialize Terraform

   - Run "terraform init"

3. Apply Terraform

   - Run "terraform fmt" to format the changes
   - Run "terraform validate" to validate code changes and make sure everthing passes without error
   - Run "terraform plan" to check/verify changes
   - Run "terraform apply" to apply changes to Azure

4. Deploy the function code
   
   - Run command "func azure functionapp publish azure-function-bergener01 --build remote"
   - Note: The deployment didn't run the actual httpGetFunction.cs so I had to enable the Microsoft.AlertsManagement resource provider for my subscription
   - Run command "az provider register --namespace Microsoft.AlertsManagement"
   - Note: You can run "az provider show -n Microsoft.AlertsManagement --query registrationState" to check the status
   - When it said "Registered", I ran the build again

✅ Validation

Create a `.env` file:

```env
FUNCTION_APP_URL=https://azure-function-bergener01.azurewebsites.net
FUNCTION_KEY=<your-function-key>
```

Example curl command:

```bash
curl "$FUNCTION_APP_URL/api/httpget?name=World&code=$FUNCTION_KEY"
```

Expected “Hello World” response:

<img width="954" height="612" alt="Hello World" src="https://github.com/user-attachments/assets/8e75b5aa-2d59-4ff3-af6a-05364d3d57c3" />

✅ Cleanup

   - Navigate to the "terraform" folder
   - Run command "terraform destroy"
   - Type "yes" to confirm deletion
   - Note: File terraform\versions.tf contains feature allowing complete deletion of resource group and all resources within it
