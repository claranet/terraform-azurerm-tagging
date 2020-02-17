variable "resource_ids" {
  description = "Id of the Azure resources to tag"
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply on resource"
  type        = map(string)
}

variable "force" {
  description = "True to apply every time"
  type        = bool
  default     = false
}

variable "behavior" {
  description = "Behavior for tags applying. Must be `merge` or `overwrite`."
  type        = string
  default     = "merge"
}

variable "nb_resources" {
  description = "Number of resources to tag"
  type        = number
}
