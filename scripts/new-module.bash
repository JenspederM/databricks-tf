#!/usr/bin/env bash

PROVIDER=$1
MODULE_NAME=$2

if [ -z "$MODULE_NAME" ]; then
    echo "Usage: $0 <provider-name> <module-name>"
    echo "Example: $0 azure resource-group"
    exit 1
fi

MODULE_DIR="modules/$PROVIDER/$MODULE_NAME"

if [ -d "$MODULE_DIR" ]; then
    echo "Module $MODULE_NAME already exists"
    exit 1
fi

mkdir -p "$MODULE_DIR"

cat > "$MODULE_DIR/main.tf" <<EOF
resource "azurerm_resource_group" "this" {
  name     = "\${var.name}-rg"
  location = var.location
  tags     = var.tags
}
EOF

cat > "$MODULE_DIR/outputs.tf" <<EOF
output "resource_group_id" {
  value       = azurerm_resource_group.this.id
  description = "ID of the resource group"
}
output "resource_group_name" {
  value       = azurerm_resource_group.this.name
  description = "Name of the resource group"
}
EOF

cat > "$MODULE_DIR/variables.tf" <<EOF
variable "name" {
  type        = string
  description = "The name of the module"
}
variable "location" {
  type        = string
  description = "The region where the resources will be deployed"
}
variable "tags" {
  type        = map(string)
  description = "A map of tags to add to the resources"
  default     = {}
}
EOF

cat > "$MODULE_DIR/versions.tf" <<EOF
terraform {
  required_version = "1.6.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.98" # Set the version here
    }
  }
}
EOF

cat > "$MODULE_DIR/README.md" <<EOF
# ${MODULE_NAME}

<!-- BEGIN_TF_DOCS -->
{{ .Content }}
<!-- END_TF_DOCS -->
EOF
