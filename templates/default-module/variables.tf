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
}