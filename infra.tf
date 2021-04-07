

resource "azurerm_resource_group" "rg_nv" {
  count = var.env_name == "nvlabs" ? 1 : 0
  name     = "${var.env_name}"
  location = var.region
}

module "network" {
  source              = "Azure/network/azurerm"
  vnet_name           = "${var.env_name}-net"
  resource_group_name = var.env_name
  address_space       = var.az_net
  subnet_prefixes     = [var.az_subnet]
  #depends_on          = [azurerm_resource_group.rg_nv]
}

# data "azuread_group" "aks_cluster_admins" {
#   name = "AKS-cluster-admins"
# }

# Terraform AKS Module
module "aks" {
  source                           = "Azure/aks/azurerm"
  resource_group_name              = var.env_name
  prefix                           = var.env_name
  vnet_subnet_id                   = module.network.vnet_subnets[0]
  os_disk_size_gb                  = 50
  kubernetes_version               = var.kubernetes_version
  orchestrator_version             = var.kubernetes_version
  agents_min_count                 = var.num_nodes
  agents_size                      = var.machine_size
  #enable_azure_policy              = true
  #enable_role_based_access_control = true
  #rbac_aad_admin_group_object_ids  = [data.azuread_group.aks_cluster_admins.id]
  #rbac_aad_managed                 = true

  depends_on = [module.network]
}