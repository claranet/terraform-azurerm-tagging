# Azure tagging
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/modules/claranet/tagging/azurerm/)

This Terraform helper allows to merge or overwrite tags on a resource.

## Requirements

  * [AzureCLI](https://docs.microsoft.com/fr-fr/cli/azure/?view=azure-cli-latest) >= 2.1

## Version compatibility

| Module version | Terraform version | AzureRM version |
| -------------- | ----------------- | --------------- |
| >= 5.x.x       | 0.15.x & 1.0.x    | >= 1.0          |
| >= 4.x.x       | 0.13.x            | >= 1.0          |
| >= 3.x.x       | 0.12.x            | >= 1.0          |
| >= 2.x.x       | 0.12.x            | < 2.0           |
| <  2.x.x       | 0.11.x            | < 2.0           |

## Usage

You can use this module by including it this way:
```
module "myresource_tagging" {
  source  = "claranet/tagging/azurerm"
  version = "x.x.x"

  nb_resources = 2
  resource_ids = [var.myresource_id_1, var.myresource_id_2]
  behavior     = "merge"   # Must be "merge" or "overwrite"
  
  tags = {
    "foo"        = "bar"
    "monitoring" = "true"
  }
}
```

<!-- BEGIN_TF_DOCS -->
## Providers

| Name | Version |
|------|---------|
| azurerm | >= 1 |
| null | >= 2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.tags](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| behavior | Behavior for tags applying. Must be `merge` or `overwrite`. | `string` | `"merge"` | no |
| force | True to apply every time | `bool` | `false` | no |
| nb\_resources | Number of resources to tag | `number` | n/a | yes |
| resource\_ids | Id of the Azure resources to tag | `list(string)` | n/a | yes |
| tags | Tags to apply on resource | `map(string)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
## Related documentation

Microsoft Azure tagging documentation: [docs.microsoft.com/fr-fr/azure/azure-resource-manager/resource-group-using-tags](https://docs.microsoft.com/fr-fr/azure/azure-resource-manager/resource-group-using-tags)
