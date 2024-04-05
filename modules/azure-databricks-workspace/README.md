<!-- BEGIN_TF_DOCS -->
## Requirements

The following requirements are needed by this module:

- <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) (1.6.2)

- <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) (~>3.98)

## Providers

The following providers are used by this module:

- <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) (3.98.0)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [azurerm_databricks_access_connector.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/databricks_access_connector) (resource)
- [azurerm_databricks_workspace.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/databricks_workspace) (resource)
- [azurerm_network_security_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) (resource)
- [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) (resource)
- [azurerm_role_assignment.workspace](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) (resource)
- [azurerm_subnet.private](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) (resource)
- [azurerm_subnet.public](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) (resource)
- [azurerm_subnet_network_security_group_association.private](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association) (resource)
- [azurerm_subnet_network_security_group_association.public](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association) (resource)
- [azurerm_virtual_network.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) (resource)

## Required Inputs

The following input variables are required:

### <a name="input_location"></a> [location](#input\_location)

Description: The region where the resources will be deployed

Type: `string`

### <a name="input_name"></a> [name](#input\_name)

Description: The name of the module

Type: `string`

### <a name="input_private_subnet_address_prefixes"></a> [private\_subnet\_address\_prefixes](#input\_private\_subnet\_address\_prefixes)

Description: The address prefixes for the private subnet

Type: `list(string)`

### <a name="input_public_subnet_address_prefixes"></a> [public\_subnet\_address\_prefixes](#input\_public\_subnet\_address\_prefixes)

Description: The address prefixes for the public subnet

Type: `list(string)`

### <a name="input_vnet_address_space"></a> [vnet\_address\_space](#input\_vnet\_address\_space)

Description: The address space for the virtual network

Type: `list(string)`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_sku"></a> [sku](#input\_sku)

Description: The SKU of the Databricks workspace

Type: `string`

Default: `"standard"`

### <a name="input_tags"></a> [tags](#input\_tags)

Description: A map of tags to add to the resources

Type: `map(string)`

Default: `{}`

### <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name)

Description: The name of the virtual network. Defaults to <name>-vnet

Type: `string`

Default: `null`

## Outputs

The following outputs are exported:

### <a name="output_access_connector_id"></a> [access\_connector\_id](#output\_access\_connector\_id)

Description: ID of the access connector. E.g. /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-databricks-rg/providers/Microsoft.Databricks/workspaces/databricks-workspace/accessControl/00000000-0000-0000-0000-000000000000

### <a name="output_access_connector_name"></a> [access\_connector\_name](#output\_access\_connector\_name)

Description: Name of the access connector

### <a name="output_access_connector_principal_id"></a> [access\_connector\_principal\_id](#output\_access\_connector\_principal\_id)

Description: Principal ID of the managed identity for the access connector

### <a name="output_nsg_id"></a> [nsg\_id](#output\_nsg\_id)

Description: ID of the new NSG

### <a name="output_nsg_name"></a> [nsg\_name](#output\_nsg\_name)

Description: Name of the NSG

### <a name="output_private_subnet_id"></a> [private\_subnet\_id](#output\_private\_subnet\_id)

Description: ID of the private subnet

### <a name="output_private_subnet_name"></a> [private\_subnet\_name](#output\_private\_subnet\_name)

Description: Name of the private subnet

### <a name="output_public_subnet_id"></a> [public\_subnet\_id](#output\_public\_subnet\_id)

Description: ID of the public subnet

### <a name="output_public_subnet_name"></a> [public\_subnet\_name](#output\_public\_subnet\_name)

Description: Name of the public subnet

### <a name="output_resource_group_id"></a> [resource\_group\_id](#output\_resource\_group\_id)

Description: ID of the resource group

### <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name)

Description: Name of the resource group

### <a name="output_vnet_id"></a> [vnet\_id](#output\_vnet\_id)

Description: ID of the new Vnet

### <a name="output_vnet_name"></a> [vnet\_name](#output\_vnet\_name)

Description: Name of the Vnet

### <a name="output_workspace_id"></a> [workspace\_id](#output\_workspace\_id)

Description: ID of the Databricks workspace

### <a name="output_workspace_name"></a> [workspace\_name](#output\_workspace\_name)

Description: Name of the Databricks workspace

### <a name="output_workspace_url"></a> [workspace\_url](#output\_workspace\_url)

Description: URL of the Databricks workspace
<!-- END_TF_DOCS -->    