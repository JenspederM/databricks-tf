
resource "azurerm_virtual_network" "this" {
  name                = try(var.vnet_name, "${var.name}-vnet")
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  address_space       = var.vnet_address_space
  tags                = var.tags
}

locals {
  service_delegation_actions = [
    "Microsoft.Network/virtualNetworks/subnets/join/action",
    "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
    "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
  ]
}


resource "azurerm_subnet" "private" {
  name                 = "${var.name}-private-subnet"
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name

  address_prefixes = var.private_subnet_address_prefixes

  delegation {
    name = "databricks-private-subnet-delegation"

    service_delegation {
      name    = "Microsoft.Databricks/workspaces"
      actions = local.service_delegation_actions
    }
  }
}

resource "azurerm_subnet" "public" {
  name                 = "${var.name}-public-subnet"
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name

  address_prefixes = var.public_subnet_address_prefixes

  delegation {
    name = "databricks-public-subnet-delegation"

    service_delegation {
      name    = "Microsoft.Databricks/workspaces"
      actions = local.service_delegation_actions
    }
  }
}

resource "azurerm_network_security_group" "this" {
  name                = "${var.name}-nsg"
  resource_group_name = azurerm_resource_group.this.name
  location            = var.location
  tags                = var.tags
}

resource "azurerm_subnet_network_security_group_association" "private" {
  subnet_id                 = azurerm_subnet.private.id
  network_security_group_id = azurerm_network_security_group.this.id
}

resource "azurerm_subnet_network_security_group_association" "public" {
  subnet_id                 = azurerm_subnet.public.id
  network_security_group_id = azurerm_network_security_group.this.id
}