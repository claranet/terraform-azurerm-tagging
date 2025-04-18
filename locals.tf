locals {
  is_powershell = lower(var.interpreter) == "powershell"

  trimmed_tags = {
    for key, value in var.tags :
    key => value if value != null
  }
  tags = join(" ", formatlist("%s=\"%s\"", keys(local.trimmed_tags), values(local.trimmed_tags)))

  # Trick to detect if the resources_ids is a list or a map and avoid unpredictable plan error
  is_list = var.resource_count == null ? false : true

  # Pre-process the resources to ensure static keys
  normalized_resources = local.is_list ? {
    for i, r in tolist(var.resources_ids) : tostring(i) => r
  } : tomap(var.resources_ids)
}
