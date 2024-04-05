# Databricks meets Tofu

This is a template for a full private databricks workspace setup with separated dev, test and prod environments, backups, governance and more...

## Getting Started

### Prerequisites

Tools needed to run this project:

- [asdf](https://asdf-vm.com/) - Version manager for programming languages and tools

### Development

1. Install `asdf` following the instructions on the [official website](https://asdf-vm.com/guide/getting-started.html).
2. Install the required tools

```bash
asdf plugin-add just
asdf plugin-add opentofu
asdf plugin-add azure-cli
asdf plugin-add terramate
asdf plugin-add python
asdf plugin-add pre-commit
asdf plugin-add terraform-docs
asdf plugin-add tflint

asdf install
```

3. Run the `tofu` commands

```bash
tofu init
tofu plan
tofu apply
```

## Project Structure

```
.
    /modules                            # tf modules
        /<module>                       # Module name
            /main.tf                    # Main module file
            /variables.tf               # Module variables
            /outputs.tf                 # Module outputs
            /<module>                   # Submodule
    /stacks                             # Terramate generated stacks
        /<account>                      # Account name
            /<env>                      # Environment name
                /<region>               # Region name
                    /<stack>            # Stack name
                        /.stack.tm.hcl  # Terramate stack file
    /.gitignore                         # Files and directories to be ignored by git
    /.pre-commit-config.yaml            # Pre-commit configuration
    /.tool-versions                     # asdf tool versions
    /justfile                           # Small scripts to make your life easier. Run `just --summary` to see the available commands
```

<!-- BEGIN_TF_DOCS -->

## Inputs

No inputs.

## Modules

No modules.

## Outputs

No outputs.

## Providers

No providers.

## Requirements

No requirements.

## Resources

No resources.

<!-- END_TF_DOCS -->
