# Networks 

# Region 1 VNET 1
resource "azurerm_virtual_network" "region1-vnet1" {
  name                = "${var.env-prefix}-vnet-${var.region1}-01"
  location            = var.region1
  resource_group_name = azurerm_resource_group.region1-rg1.name
  address_space       = [var.region1-vnet1-address-space]
  tags                = var.common_tags
}
resource "azurerm_subnet" "region1-vnet1-snet1" {
  name                 = "${var.env-prefix}-vnet-${var.region1}-01-snet-01"
  resource_group_name  = azurerm_resource_group.region1-rg1.name
  virtual_network_name = azurerm_virtual_network.region1-vnet1.name
  address_prefixes     = [var.region1-vnet1-snet1-range]
}
resource "azurerm_subnet" "region1-bastion-snet" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = azurerm_resource_group.region1-rg1.name
  virtual_network_name = azurerm_virtual_network.region1-vnet1.name
  address_prefixes     = [var.region1-vnet1-bastion-snet-range]
}

# Region 2 VNET 1
resource "azurerm_virtual_network" "region2-vnet1" {
  name                = "${var.env-prefix}-vnet-${var.region2}-01"
  location            = var.region2
  resource_group_name = azurerm_resource_group.region2-rg1.name
  address_space       = [var.region2-vnet1-address-space]
  tags                = var.common_tags
}
resource "azurerm_subnet" "region2-vnet1-snet1" {
  name                 = "${var.env-prefix}-vnet-${var.region2}-01-snet-01"
  resource_group_name  = azurerm_resource_group.region2-rg1.name
  virtual_network_name = azurerm_virtual_network.region2-vnet1.name
  address_prefixes     = [var.region2-vnet1-snet1-range]
}
resource "azurerm_subnet" "region2-bastion-snet" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = azurerm_resource_group.region2-rg1.name
  virtual_network_name = azurerm_virtual_network.region2-vnet1.name
  address_prefixes     = [var.region2-vnet1-bastion-snet-range]
}

# Region 3 VNET 1
resource "azurerm_virtual_network" "region3-vnet1" {
  name                = "${var.env-prefix}-vnet-${var.region3}-01"
  location            = var.region3
  resource_group_name = azurerm_resource_group.region3-rg1.name
  address_space       = [var.region3-vnet1-address-space]
  tags                = var.common_tags
}
resource "azurerm_subnet" "region3-vnet1-snet1" {
  name                 = "${var.env-prefix}-vnet-${var.region3}-01-snet-01"
  resource_group_name  = azurerm_resource_group.region3-rg1.name
  virtual_network_name = azurerm_virtual_network.region3-vnet1.name
  address_prefixes     = [var.region3-vnet1-snet1-range]
}
resource "azurerm_subnet" "region3-bastion-snet" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = azurerm_resource_group.region3-rg1.name
  virtual_network_name = azurerm_virtual_network.region3-vnet1.name
  address_prefixes     = [var.region3-vnet1-bastion-snet-range]
}
