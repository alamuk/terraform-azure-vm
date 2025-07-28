# 🚀 Modular & Scalable Azure VM Infrastructure Using Terraform


**Reusable • Scalable • Environment-Ready • Production-Proven**


This project is the answer — a clean, scalable setup to provision Azure Virtual Machines using **Terraform modules**, supporting **multiple environments** like `dev`, `staging`, and `prod`.


---


## 📘 What You’ll Learn


- How to structure a scalable Terraform project
- How to create reusable modules for each Azure resource
- How to manage multiple environments
- How to deploy and verify infrastructure in Azure Portal


---




Each module encapsulates a single Azure resource, promoting clean separation of concerns and reusability.


## File Descriptions
🔹 Root Files
- provider.tf Configures the Azure provider (authentication, region)
- main.tf Root configuration that invokes all modules
- variables.tf  Declares global variables used across modules
- outputs.tf  Displays values like VM name and public IP after apply
- terraform.tfvars  Provides default values for variables


🔹 Environments
- environments/dev/terraform.tfvars Overrides root variable values for dev environment






🔹 Modules
#### Each module contains:
- main.tf – Resource logic (e.g., virtual machine, NIC)
- variables.tf – Required inputs for that resource
- outputs.tf – Outputs used by other modules or root


🧪 Example: environments/dev/terraform.tfvars
```
location       = "North Europe"
rg_name        = "dev-rg"
vnet_name      = "dev-vnet"
subnet_name    = "dev-subnet"
nsg_name       = "dev-nsg"
nic_name       = "dev-nic"
vm_name        = "dev-vm"
admin_user     = "azureuser"
admin_password = "ComplexPassword123!"


```

### Basic setup
```
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

```



### 🚀 How to Deploy
Initialize Terraform:


```
terraform init


Plan the Deployment:
terraform plan -var-file="environments/dev/terraform.tfvars"


Apply the Configuration:
terraform apply -var-file="environments/dev/terraform.tfvars"
```


## Verify in Azure Portal:


- Check the Resource Group


- Confirm VM, NIC, NSG, VNet resources


- Retrieve the public IP


- SSH/RDP into your VM




## Why This Structure Works
Feature Benefit
Modules Clean, reusable resource logic
Environment folder  Easy switching between dev/stage/prod
Scalable layout Add more VMs, NSGs, LBs with less effort
Clean separation  Easier collaboration and debugging




## Final Thoughts
This setup is designed for real-world use:


Add more VMs using count or for_each


Integrate with Azure Key Vault or CI/CD pipelines


Manage state using Terraform Cloud or remote backends


This is production-grade Terraform — clean, modular, and scalable.


## Further Reading
- Terraform Azure Provider
- Learn Terraform – HashiCorp
- Azure Virtual Machines Docs




## Contact & Contributions
Open an issue or submit a pull request if you'd like to contribute or improve the project.


Follow me on LinkedIn or read the full guide on Medium




