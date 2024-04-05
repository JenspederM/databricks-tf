# Databricks meets Tofu

This is a template for a full private databricks workspace setup with separated dev, test and prod environments, backups, governance and more...

## Getting Started

### Prerequisites

Tools needed to run this project:

- [asdf](https://asdf-vm.com/) - Version manager for programming languages and tools
- [OpenTofu](https://opentofu.org/) - Infrastructure as code (open source fork of Terraform)
- [az cli](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) - Azure command line interface

### Development

1. Install `asdf` following the instructions on the [official website](https://asdf-vm.com/guide/getting-started.html).
2. Install the required tools

```bash
asdf plugin-add opentofu
asdf plugin-add azure-cli
asdf plugin-add terramate
asdf plugin-add pythonaz

asdf install
```

3. Run the `tofu` commands

```bash
tofu init
tofu plan
tofu apply
```
