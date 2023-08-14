# Environment name prefix
variable "env-prefix" {
  type        = string
  description = "Prefix for resource names"
}

# Tags
variable "common_tags" {
  description = "Common tags for Azure resources"
  type        = map(string)
  default = {
    "businessUnit"        = "Shared IT"
    "costcenter"          = "CCC"
    "createdBy"           = "Terraform"
    "workloadEnvironment" = "Test Sandbox"
    "workloadName"        = "Virtual WAN test"
    "workloadOwner"       = "Architecture team"
  }
}

# regions
variable "region1" {
  type        = string
  description = "Location 1 for the VWAN Hub"
}
variable "region2" {
  type        = string
  description = "Location 2 for the VWAN Hub"
}
variable "region3" {
  type        = string
  description = "Location 3 for the VWAN Hub"
}

# VWAN
variable "region1-vwan-hub-space" {
  type        = string
  description = "Address space for virtual wan hub in region 1"
}
variable "region2-vwan-hub-space" {
  type        = string
  description = "Address space for virtual wan hub in region 2"
}
variable "region3-vwan-hub-space" {
  type        = string
  description = "Address space for virtual wan hub in region 3"
}

# VNets
# Region 1
variable "region1-vnet1-address-space" {
  type        = string
  description = "VNET address space for region 1 vnet 1"
}
variable "region1-vnet1-snet1-range" {
  type        = string
  description = "Subnet address range for region 1 vnet 1 subnet 1"
}
variable "region1-vnet1-bastion-snet-range" {
  type        = string
  description = "Subnet address space for region 1 vnet 1 Bastion subnet"
}

# Region 2
variable "region2-vnet1-address-space" {
  type        = string
  description = "VNET address space for region 2 vnet 1"
}
variable "region2-vnet1-snet1-range" {
  type        = string
  description = "Subnet address range for region 2 vnet 1 subnet 1"
}
variable "region2-vnet1-bastion-snet-range" {
  type        = string
  description = "Subnet address space for region 2 vnet 1 Bastion subnet"
}

# Region 3
variable "region3-vnet1-address-space" {
  type        = string
  description = "VNET address space for region 3 vnet 1"
}
variable "region3-vnet1-snet1-range" {
  type        = string
  description = "Subnet address range for region 3 vnet 1 subnet 1"
}
variable "region3-vnet1-bastion-snet-range" {
  type        = string
  description = "Subnet address space for region 3 vnet 1 Bastion subnet"
}
