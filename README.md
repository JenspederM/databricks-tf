# Databricks meets Tofu

This is a template for a full private databricks workspace setup with separated dev, test and prod environments, backups, governance and more...

## Getting Started

### Prerequisites

Tools needed to run this project:

- [asdf](https://asdf-vm.com/) - Version manager for programming languages and tools

### Development

1. Install `asdf` following the instructions on the [official website](https://asdf-vm.com/guide/getting-started.html).
2. Add the required plugins

```bash
asdf plugin-add just
asdf plugin-add opentofu
asdf plugin-add azure-cli
asdf plugin-add terramate
asdf plugin-add python
asdf plugin-add pre-commit
asdf plugin-add terraform-docs
asdf plugin-add tflint
```

3. Install using `asdf`

```bash
asdf install
```

4. Run the `tofu` commands

```bash
tofu init
tofu plan
tofu apply
```

## Project Structure

```
/modules                            # tf modules
    /<module>                       # Module name
        /main.tf                    # Main module file
        /variables.tf               # Module variables
        /outputs.tf                 # Module outputs
        /README.md                  # Module documentation
        /versions.tf                # Module providers
        /...
/stacks                             # Terramate generated stacks
    /<account>                      # Account name
        /<env>                      # Environment name
            /<region>               # Region name
                /<stack>            # Stack name
                    /.stack.tm.hcl  # Terramate stack file
/.gitignore                         # Files and directories to be ignored by git
/.pre-commit-config.yaml            # Pre-commit configuration
/.tool-versions                     # asdf tool versions
/justfile                           # Small scripts to make your life easier. Try running `just`.
```

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
| <a name="input_location"></a> [location](#input\_location) | The region where the resources will be deployed | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to the resources | `map(string)` | `{}` | no |
## Outputs

No outputs.
## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_metastore"></a> [metastore](#module\_metastore) | ./modules/databricks/metastore | n/a |
| <a name="module_metastore_assignment"></a> [metastore\_assignment](#module\_metastore\_assignment) | ./modules/databricks/metastore-assignment | n/a |
| <a name="module_workspace"></a> [workspace](#module\_workspace) | ./modules/azure/databricks-workspace | n/a |
## Resources

No resources.
<!-- END_TF_DOCS -->
