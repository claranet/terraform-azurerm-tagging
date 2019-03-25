variable "resource_id" {
  description = "Id of the Azure resource to tag"
  type        = "string"
}

variable "tags" {
  description = "Tags to add on resource"
  type        = "map"
}

variable "force" {
  description = "True to apply very time"
  type        = "string"
  default     = "false"
}
