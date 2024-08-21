## Terraform practice01

- Doc: TODO
- Setup with Azure: https://github.com/TheDevOpsHub/TerraformHub/blob/main/Azure/docs/terraform-azure-setup.md

## Structure

```bash
.
├── README.md
├── main.tf
├── modules
│   ├── network
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── variables.tf
│   │   └── vnet.tf
│   └── vm
│       ├── main.tf
│       ├── outputs.tf
│       ├── variables.tf
│       └── vm.tf
├── outputs.tf
├── provider.tf
├── terraform.tfvars
└── variables.tf
```

## Run

```bash
cd cd topics/terraform/terraform-practice01

terraform init

terraform plan -out="tfplan.out"

terraform apply "tfplan.out"
```
