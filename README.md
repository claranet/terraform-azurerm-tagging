# Azure tagging

This Terraform helper allows to merge or overwrite tags on a resource.

## Usage
You can use this module by including it this way:
```
module "myresource_tagging" {
  source = "git::ssh://git@git.fr.clara.net/claranet/cloudnative/projects/cloud/azure/terraform/modules/tagging.git?ref=vX.X.X"

  resource_id = "${var.myresource_id}"
  behavior    = "merge"   # Must be "merge" or "overwrite"
  
  tags = {
    "foo"        = "bar",
    "monitoring" = "true"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| behavior | Behavior for tags applying. Must be `merge` or `overwrite`. | string | `"merge"` | no |
| force | True to apply every time | string | `"false"` | no |
| resource\_id | Id of the Azure resource to tag | string | n/a | yes |
| tags | Tags to apply on resource | map | n/a | yes |
