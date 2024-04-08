
# metastore-assignment
<!-- BEGIN_TF_DOCS -->


## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.6.2 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.98 |
| <a name="requirement_databricks"></a> [databricks](#requirement\_databricks) | ~>1.31 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_connector_id"></a> [access\_connector\_id](#input\_access\_connector\_id) | The ID of the Workspace Access Connector | `string` | n/a | yes |
| <a name="input_access_connector_name"></a> [access\_connector\_name](#input\_access\_connector\_name) | The Name of the Workspace Access Connector | `string` | n/a | yes |
| <a name="input_access_connector_principal_id"></a> [access\_connector\_principal\_id](#input\_access\_connector\_principal\_id) | The Principal ID of the Workspace Access Connector | `string` | n/a | yes |
| <a name="input_metastore_id"></a> [metastore\_id](#input\_metastore\_id) | The ID of the Metastore | `string` | n/a | yes |
| <a name="input_metastore_storage_account_id"></a> [metastore\_storage\_account\_id](#input\_metastore\_storage\_account\_id) | The ID of the Metastore Storage Account | `string` | n/a | yes |
| <a name="input_workspace_id"></a> [workspace\_id](#input\_workspace\_id) | The ID of the Workspace | `string` | n/a | yes |
| <a name="input_default_catalog_name"></a> [default\_catalog\_name](#input\_default\_catalog\_name) | The default catalog name | `string` | `"hive_metastore"` | no |
## Outputs

No outputs.
## Modules

No modules.
## Resources

| Name | Type |
|------|------|
| [azurerm_role_assignment.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [databricks_metastore_assignment.this](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/metastore_assignment) | resource |
| [databricks_metastore_data_access.this](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/metastore_data_access) | resource |
<!-- END_TF_DOCS -->
