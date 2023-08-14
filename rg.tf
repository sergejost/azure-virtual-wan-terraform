# Resource groups

resource "azurerm_resource_group" "region1-rg1" {
  name     = "${var.env-prefix}-rg-vwan-${var.region1}"
  location = var.region1
  tags     = var.common_tags
}

resource "azurerm_resource_group" "region2-rg1" {
  name     = "${var.env-prefix}-rg-vwan-${var.region2}"
  location = var.region2
  tags     = var.common_tags
}

resource "azurerm_resource_group" "region3-rg1" {
  name     = "${var.env-prefix}-rg-vwan-${var.region3}"
  location = var.region3
  tags     = var.common_tags
}
