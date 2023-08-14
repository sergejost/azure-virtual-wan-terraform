# Environment name prefix
env-prefix = "sbx-vwan"

# Tags
common_tags = {
  "businessUnit"        = "Shared IT"
  "costcenter"          = "CCC"
  "createdBy"           = "Terraform"
  "workloadEnvironment" = "Test Sandbox"
  "workloadName"        = "Virtual WAN test"
  "workloadOwner"       = "Architecture team"
}

# regions
region1 = "eastus"
region2 = "westeurope"
region3 = "australiaeast"

# VWAN
region1-vwan-hub-space = "10.20.28.0/23"
region2-vwan-hub-space = "10.22.28.0/23"
region3-vwan-hub-space = "10.24.28.0/23"

# VNets
region1-vnet1-address-space      = "10.20.0.0/24"
region1-vnet1-snet1-range        = "10.20.0.0/25"
region1-vnet1-bastion-snet-range = "10.20.0.128/26"

region2-vnet1-address-space      = "10.22.0.0/24"
region2-vnet1-snet1-range        = "10.22.0.0/25"
region2-vnet1-bastion-snet-range = "10.22.0.128/26"

region3-vnet1-address-space      = "10.24.0.0/24"
region3-vnet1-snet1-range        = "10.24.0.0/25"
region3-vnet1-bastion-snet-range = "10.24.0.128/26"
