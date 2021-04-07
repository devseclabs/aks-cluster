# VARS
#general
variable "region" {
    default = "westus"
}
variable "env_name" {
    default = "nvlabs"
}

variable "kubernetes_version" {
  default = "1.19.3"
}

variable "num_nodes" {
  default = "3"
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