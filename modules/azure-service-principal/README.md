# service-principal

<!-- BEGIN_TF_DOCS -->


## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.6.2 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | ~>2.47 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.98 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The name of the module | `string` | n/a | yes |
| <a name="input_role_assignments"></a> [role\_assignments](#input\_role\_assignments) | A list of role assignments to assign to the Service Principal | <pre>list(object({<br>    scope                = string<br>    role_definition_name = string<br>  }))</pre> | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to the resources | `map(string)` | `{}` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_principal_client_id"></a> [service\_principal\_client\_id](#output\_service\_principal\_client\_id) | The client ID of the Service Principal |
| <a name="output_service_principal_object_id"></a> [service\_principal\_object\_id](#output\_service\_principal\_object\_id) | The object ID of the Service Principal |
| <a name="output_service_principal_password"></a> [service\_principal\_password](#output\_service\_principal\_password) | The password of the Service Principal |
## Modules

No modules.
## Resources

| Name | Type |
|------|------|
| [azuread_application.this](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application) | resource |
| [azuread_service_principal.this](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal) | resource |
| [azuread_service_principal_password.this](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password) | resource |
| [azurerm_role_assignment.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
<!-- END_TF_DOCS -->
