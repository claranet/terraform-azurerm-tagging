locals {
  tags = "${join(" ", formatlist("%s=%s", keys(var.tags), values(var.tags)))}"
}

resource "null_resource" "tags" {
  # Code found here https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-using-tags#code-try-22
  provisioner "local-exec" {
    command = <<CMD
      current_tags=""
      if "${var.behavior == "merge" ? "true" : "false"}" == "true"; then
        current_tags=$(az resource show --ids ${var.resource_id} -o json --query "@.tags" | tr -d '"{},' | sed 's/: /=/g');
      fi
      az resource tag --tags $current_tags ${local.tags} --ids ${var.resource_id}
    CMD
  }

  triggers {
    "resource"    = "${var.resource_id}"
    "tags"        = "${jsonencode(var.tags)}"
    "force-apply" = "${var.force ? uuid() : "false"}"
    "behavior"    = "${var.behavior}"
  }
}
