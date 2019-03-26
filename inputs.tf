variable "resource_id" {
  description = "Id of the Azure resource to tag"
  type        = "string"
}

variable "tags" {
  description = "Tags to apply on resource"
  type        = "map"
}

variable "force" {
  description = "True to apply very time"
  type        = "string"
  default     = "false"
}

variable "behavior" {
  description = "Behavior for tags applying. Must be `merge` or `overwrite`."
  type        = "string"
  default     = "merge"
}
