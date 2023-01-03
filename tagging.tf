locals {
  tags = join(" ", formatlist("%s=\"%s\"", keys(var.tags), values(var.tags)))
}

data "azurerm_client_config" "current" {}

resource "null_resource" "tags" {

  count = var.nb_resources

  triggers = {
    resource    = var.resource_ids[count.index]
    tags        = jsonencode(var.tags)
    force-apply = var.force ? uuid() : false
    behavior    = var.behavior
  }

  # Code found here https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-using-tags#code-try-22
  provisioner "local-exec" {
    interpreter = local.is_powershell ? ["PowerShell"] : ["/bin/bash", "-c"]
    command     = templatefile(format("%s/script/%s", path.module, local.is_powershell ? "tag.ps1.tmpl" : "tag.sh.tmpl"),
      {
        behavior        = var.behavior
        resource_id     = var.resource_ids[count.index]
        tags            = local.tags
        subscription_id = data.azurerm_client_config.current.subscription_id
      }
    )
  }

}
