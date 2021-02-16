# VARS
#general
variable "region" {
    default = "eastus"
}
variable "env_name" {
    default = "nvlabs"
}

variable "kubernetes_version" {
  default = "1.18.10"
}

variable "num_nodes" {
  default = "1"
}

variable "machine_size" {
    default = "Standard_D2s_v3"
}

# Network
variable "az_net" {
    default = "10.10.0.0/16"
}
variable "az_subnet" {
    default = "10.10.1.0/24"
}