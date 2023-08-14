# Virtual WAN

# VWAN
resource "azurerm_virtual_wan" "virtual-wan-01" {
  name                = "${var.env-prefix}-vwan-01"
  resource_group_name = azurerm_resource_group.region1-rg1.name
  location            = var.region1
  tags                = var.common_tags
}

# virtual-wan Hub 1
resource "azurerm_virtual_hub" "region1-vhub1" {
  name                = "${var.env-prefix}-vwan-hub-${var.region1}-01"
  resource_group_name = azurerm_resource_group.region1-rg1.name
  location            = var.region1
  virtual_wan_id      = azurerm_virtual_wan.virtual-wan-01.id
  address_prefix      = var.region1-vwan-hub-space
  tags                = var.common_tags
}
# virtual-wan Hub 2
resource "azurerm_virtual_hub" "region2-vhub1" {
  name                = "${var.env-prefix}-vwan-hub-${var.region2}-01"
  resource_group_name = azurerm_resource_group.region2-rg1.name
  location            = var.region2
  virtual_wan_id      = azurerm_virtual_wan.virtual-wan-01.id
  address_prefix      = var.region2-vwan-hub-space
  tags                = var.common_tags
}
# virtual-wan Hub 3
resource "azurerm_virtual_hub" "region3-vhub1" {
  name                = "${var.env-prefix}-vwan-hub-${var.region3}-01"
  resource_group_name = azurerm_resource_group.region3-rg1.name
  location            = var.region3
  virtual_wan_id      = azurerm_virtual_wan.virtual-wan-01.id
  address_prefix      = var.region3-vwan-hub-space
  tags                = var.common_tags
}

# virtual-wan Hub Connection 1
resource "azurerm_virtual_hub_connection" "region1-vwan-vnet-connection1" {
  name                      = "${var.env-prefix}-vwan-conn-${var.region1}-vnet1-to-virtual-wan"
  virtual_hub_id            = azurerm_virtual_hub.region1-vhub1.id
  remote_virtual_network_id = azurerm_virtual_network.region1-vnet1.id
}
# virtual-wan Hub Connection 2
resource "azurerm_virtual_hub_connection" "region2-vwan-vnet-connection1" {
  name                      = "${var.env-prefix}-vwan-conn-${var.region2}-vnet1-to-virtual-wan"
  virtual_hub_id            = azurerm_virtual_hub.region2-vhub1.id
  remote_virtual_network_id = azurerm_virtual_network.region2-vnet1.id
}
# virtual-wan Hub Connection 3
resource "azurerm_virtual_hub_connection" "region3-vwan-vnet-connection1" {
  name                      = "${var.env-prefix}-vwan-conn-${var.region3}-vnet1-to-virtual-wan"
  virtual_hub_id            = azurerm_virtual_hub.region3-vhub1.id
  remote_virtual_network_id = azurerm_virtual_network.region3-vnet1.id
}
