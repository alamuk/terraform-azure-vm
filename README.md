### path 
/Users/shah/Desktop/DEV/azure/vm-terraform

### 1. We Should Only Delete or Clean These (inside your Terraform project directory):
- terraform.tfstate
- terraform.tfstate.backup
- .terraform/ folder


### 2. Log in to Azure account 
az login
az account set --subscription "SUBSCRIPTION_ID_OR_NAME"
/// az account set --subscription "5f1a4a88-78cb-4b61-8822-f47f137ee555" ///

### 3. follow this 
run code from this dir - 
vm-terraform
- terraform init
- terraform plan -var-file="environments/dev/terraform.tfvars" 
- terraform apply -var-file="environments/dev/terraform.tfvars" 



…or create a new repository on the command line
echo "# terraform-azure-vm" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/alamuk/terraform-azure-vm.git
git push -u origin main

