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
  validation {
    condition     = contains(["merge", "overwrite"], var.behavior)
    error_message = "The value for behavior must be either `merge` or `overwrite`."
  }
}

variable "nb_resources" {
  description = "Number of resources to tag"
  type        = number
}

variable "interpreter" {
  description = "Indicates which OS the script is running in"
  type        = string
  default     = "bash"
  validation {
    condition     = contains(["bash", "PowerShell"], var.interpreter)
    error_message = "The value for interpreter must be either `bash` or `PowerShell`."
  }
}