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

- [azurerm_role_assignment.contributors](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) (resource)
- [azurerm_role_assignment.readers](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) (resource)
- [azurerm_storage_account.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) (resource)
- [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) (data source)

## Required Inputs

The following input variables are required:

### <a name="input_name"></a> [name](#input\_name)

Description: The name of the module

Type: `string`

### <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name)

Description: The name of the resource group

Type: `string`

### <a name="input_tags"></a> [tags](#input\_tags)

Description: A map of tags to add to the resources

Type: `map(string)`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_access_tier"></a> [access\_tier](#input\_access\_tier)

Description: The access tier of the storage account

Type: `string`

Default: `"Hot"`

### <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type)

Description: The replication type of the storage account

Type: `string`

Default: `"LRS"`

### <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier)

Description: The tier of the storage account

Type: `string`

Default: `"Standard"`

### <a name="input_allow_nested_items_to_be_public"></a> [allow\_nested\_items\_to\_be\_public](#input\_allow\_nested\_items\_to\_be\_public)

Description: Allow nested items to be public

Type: `bool`

Default: `false`

### <a name="input_contributors"></a> [contributors](#input\_contributors)

Description: A list of object ids to assign as 'Storage Blob Data Contributor' to the storage account

Type: `list(string)`

Default: `[]`

### <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled)

Description: Allow public network access to the storage account

Type: `bool`

Default: `false`

### <a name="input_readers"></a> [readers](#input\_readers)

Description: A list of object ids to assign as 'Storage Blob Data Reader' to the storage account

Type: `list(string)`

Default: `[]`

### <a name="input_sftp_enabled"></a> [sftp\_enabled](#input\_sftp\_enabled)

Description: Enable SFTP on the storage account

Type: `bool`

Default: `false`

## Outputs

The following outputs are exported:

### <a name="output_storage_account"></a> [storage\_account](#output\_storage\_account)

Description: The created storage account
<!-- END_TF_DOCS -->    