locals {
  tags = join(" ", formatlist("%s=%s", keys(var.tags), values(var.tags)))
}

resource "null_resource" "tags" {

  count = var.nb_resources

  # Code found here https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-using-tags#code-try-22
  provisioner "local-exec" {
    command = <<CMD
      current_tags=""
      if "${var.behavior == "merge" ? true : false}" == true; then
        current_tags=$(az resource show --ids ${var.resource_ids[count.index]} -o json --query "@.tags" | tr -d '"{},' | sed 's/: /=/g');
      fi
      az resource tag --tags $current_tags ${local.tags} --ids ${var.resource_ids[count.index]}
    CMD
  }

  triggers = {
    resource    = var.resource_ids[count.index]
    tags        = jsonencode(var.tags)
    force-apply = var.force ? uuid() : false
    behavior    = var.behavior
  }
}
