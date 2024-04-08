variable "name" {
  type        = string
  description = "The name of the module"
}
variable "role_assignments" {
  type = list(object({
    scope                = string
    role_definition_name = string
  }))
  description = "A list of role assignments to assign to the Service Principal"
  default     = []
}
variable "tags" {
  type        = map(string)
  description = "A map of tags to add to the resources"
  default     = {}
}
