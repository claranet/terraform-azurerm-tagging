locals {
  is_powershell = lower(var.interpreter) == "powershell"

  trimmed_tags = {
    for key, value in var.tags :
    key => value if value != null
  }
  tags = join(" ", formatlist("%s=\"%s\"", keys(local.trimmed_tags), values(local.trimmed_tags)))
}
