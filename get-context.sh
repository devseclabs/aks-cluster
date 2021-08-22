#!/bin/bash

#Azure CLI
#az login

az aks get-credentials --resource-group $(terraform output -raw resource_group_name) --name $(terraform output -raw kubernetes_cluster_name)
az aks get-credentials --resource-group nvdemo --name nvlabs-aks