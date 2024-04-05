resource "azurerm_resource_group" "this" {
  name     = "${var.name}-rg"
  location = var.location
  tags     = var.tags
}

resource "azurerm_databricks_workspace" "this" {
  name                = var.name
  sku                 = var.sku
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location

  custom_parameters {
    no_public_ip                                         = true
    virtual_network_id                                   = azurerm_virtual_network.this.id
    private_subnet_name                                  = azurerm_subnet.private.name
    public_subnet_name                                   = azurerm_subnet.public.name
    private_subnet_network_security_group_association_id = azurerm_subnet_network_security_group_association.private.id
    public_subnet_network_security_group_association_id  = azurerm_subnet_network_security_group_association.public.id
  }

  tags = var.tags
}

resource "azurerm_databricks_access_connector" "this" {
  name                = "${var.name}-access-connector"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}

resource "azurerm_role_assignment" "workspace" {
  scope                = azurerm_databricks_workspace.this.id
  role_definition_name = "Contributor"
  principal_id         = azurerm_databricks_access_connector.this.identity[0].principal_id
}