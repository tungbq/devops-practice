## Terraform practice01

- Doc: TODO

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
terraform init

terraform plan

terraform apply
```
