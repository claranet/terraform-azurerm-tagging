locals {
  tags = join(" ", formatlist("%s=%s", keys(var.tags), values(var.tags)))
}

data "azurerm_client_config" "current" {}

resource "null_resource" "tags" {

  count = var.nb_resources

  # Code found here https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-using-tags#code-try-22
  provisioner "local-exec" {
    command = <<CMD
      ${templatefile("${path.module}/script/tag.sh.tmpl", {behavior = var.behavior,
                                            resource_id = var.resource_ids[count.index],
                                            tags = local.tags,
                                            subscription_id = data.azurerm_client_config.current.subscription_id
                                            }
                    )
        }
    CMD
  }

  triggers = {
    resource    = var.resource_ids[count.index]
    tags        = jsonencode(var.tags)
    force-apply = var.force ? uuid() : false
    behavior    = var.behavior
  }
}
