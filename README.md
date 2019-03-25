# Azure tagging

## Purpose
This Terraform helper allows to tag a resource.

## Usage
You can use this module by including it this way:
```
module "myresource_tagging" {
  source = "git::ssh://git@git.fr.clara.net/claranet/cloudnative/projects/cloud/azure/terraform/helpers/tagging.git?ref=vX.X.X"

  resource_id = "${var.myresource_id}"
  
  tags = {
    "foo"        = "bar",
    "monitoring" = "true"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| force | True to apply very time | string | `"false"` | no |
| resource\_id | Id of the Azure resource to tag | string | n/a | yes |
| tags | Tags to add on resource | map | n/a | yes |
