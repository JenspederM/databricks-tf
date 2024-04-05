# azure-datalake-gen2

<!-- BEGIN_TF_DOCS -->


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The name of the module | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | n/a | yes |
| <a name="input_access_tier"></a> [access\_tier](#input\_access\_tier) | The access tier of the storage account | `string` | `"Hot"` | no |
| <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type) | The replication type of the storage account | `string` | `"LRS"` | no |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | The tier of the storage account | `string` | `"Standard"` | no |
| <a name="input_allow_nested_items_to_be_public"></a> [allow\_nested\_items\_to\_be\_public](#input\_allow\_nested\_items\_to\_be\_public) | Allow nested items to be public | `bool` | `false` | no |
| <a name="input_container_delete_retention_days"></a> [container\_delete\_retention\_days](#input\_container\_delete\_retention\_days) | The number of days to retain deleted containers | `number` | `7` | no |
| <a name="input_contributors"></a> [contributors](#input\_contributors) | A list of object ids to assign as 'Storage Blob Data Contributor' to the storage account | `list(string)` | `[]` | no |
| <a name="input_delete_retention_days"></a> [delete\_retention\_days](#input\_delete\_retention\_days) | The number of days to retain deleted blobs and containers | `number` | `14` | no |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Allow public network access to the storage account | `bool` | `false` | no |
| <a name="input_readers"></a> [readers](#input\_readers) | A list of object ids to assign as 'Storage Blob Data Reader' to the storage account | `list(string)` | `[]` | no |
| <a name="input_sftp_enabled"></a> [sftp\_enabled](#input\_sftp\_enabled) | Enable SFTP on the storage account | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to the resources | `map(string)` | `{}` | no |
## Modules

No modules.
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_storage_account"></a> [storage\_account](#output\_storage\_account) | The created storage account |
## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.98.0 |
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.6.2 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.98 |
## Resources

| Name | Type |
|------|------|
| [azurerm_role_assignment.contributors](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.readers](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_storage_account.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |
<!-- END_TF_DOCS -->
