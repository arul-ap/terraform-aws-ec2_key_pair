variable "org" {
  description = "Organization code to inlcude in resource names"
  type        = string
}
variable "proj" {
  description = "Project code to include in resource names"
  type        = string
}
variable "env" {
  description = "Environment name to include in resource names"
  type        = string
}
variable "public_keys" {
  description = "Map of Customer Managed Keys"
  type        = map(string)
  default     = {}
}
