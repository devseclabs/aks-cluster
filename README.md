# Terraform - AKS Cluster Deployment

## Versions

| Name | Version |
|------|---------|
| terraform | >= 0.13.0|
| azurerm | ~> 2.38.0|

## Inputs - terraform.tfvars

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| kubernetes_version | Kubernetes Version - default "1.18.10" | `string` | `{}` | no |
| num_nodes | Number of Nodes - default "1" | `int` | `{}` | no |
| machine_size | Machine size - default "Standard_D2s_v3" | `string` | `{}` | no |


## Rename Vars file  to terraform.tfvars
```
kubernetes_version = "1.18.10"
num_nodes = 2
machine_size = "Standard_D2s_v3"
```
## Deploy and Manage your deployment using terraform:
    - init your plugins                 ```terraform init```
    - plan your deployment              ```terraform plan```
    - apply the changes in your cluster ```terraform apply```

### Clean Up
- destroy your deployment: ```terraform destroy```

