variable "resources_ids" {
  description = "IDs of the Azure resources to tag. Can be a list of resource IDs or a map ('name' => 'resource ID')."
  type        = any
  nullable    = false
  validation {
    condition     = anytrue([can(tolist(var.resources_ids)), can(tomap(var.resources_ids))])
    error_message = "The value of `var.resources_ids` must be a list or a map."
  }
}

variable "tags" {
  description = "Tags to apply on resources."
  type        = map(string)
  nullable    = false
}

variable "force" {
  description = "Whether this must be applied every time."
  type        = bool
  default     = false
  nullable    = false
}

variable "behavior" {
  description = "Behavior for tagging. Must be `merge` to keep existing or `overwrite` to replace tags."
  type        = string
  default     = "merge"
  validation {
    condition     = contains(["merge", "overwrite"], var.behavior)
    error_message = "The value for behavior must be either `merge` or `overwrite`."
  }
  nullable = false
}

variable "resource_count" {
  description = "Number of resources to tag."
  type        = number
  nullable    = true
  default     = null
}

variable "interpreter" {
  description = "System interpreter to use for tagging script. Must be `bash` or `powershell`."
  type        = string
  default     = "bash"
  validation {
    condition     = contains(["bash", "powershell"], lower(var.interpreter))
    error_message = "The value for interpreter must be either `bash` or `powershell`."
  }
  nullable = false
}
