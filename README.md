# Azure tagging
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-blue.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![OpenTofu Registry](https://img.shields.io/badge/opentofu-registry-yellow.svg)](https://search.opentofu.org/module/claranet/tagging/azurerm/)

This Terraform helper allows to merge or overwrite tags on a resource.

<!-- BEGIN_TF_DOCS -->
## Global versioning rule for Claranet Azure modules

| Module version | Terraform version | OpenTofu version | AzureRM version |
| -------------- | ----------------- | ---------------- | --------------- |
| >= 8.x.x       | **Unverified**    | 1.8.x            | >= 4.0          |
| >= 7.x.x       | 1.3.x             |                  | >= 3.0          |
| >= 6.x.x       | 1.x               |                  | >= 3.0          |
| >= 5.x.x       | 0.15.x            |                  | >= 2.0          |
| >= 4.x.x       | 0.13.x / 0.14.x   |                  | >= 2.0          |
| >= 3.x.x       | 0.12.x            |                  | >= 2.0          |
| >= 2.x.x       | 0.12.x            |                  | < 2.0           |
| <  2.x.x       | 0.11.x            |                  | < 2.0           |

## Contributing

If you want to contribute to this repository, feel free to use our [pre-commit](https://pre-commit.com/) git hook configuration
which will help you automatically update and format some files for you by enforcing our Terraform code module best-practices.

More details are available in the [CONTRIBUTING.md](./CONTRIBUTING.md#pull-request-process) file.

## Usage

This module is optimized to work with the [Claranet terraform-wrapper](https://github.com/claranet/terraform-wrapper) tool
which set some terraform variables in the environment needed by this module.
More details about variables set by the `terraform-wrapper` available in the [documentation](https://github.com/claranet/terraform-wrapper#environment).

⚠️ Since modules version v8.0.0, we do not maintain/check anymore the compatibility with
[Hashicorp Terraform](https://github.com/hashicorp/terraform/). Instead, we recommend to use [OpenTofu](https://github.com/opentofu/opentofu/).

```hcl
module "myresource_tagging" {
  source  = "claranet/tagging/azurerm"
  version = "x.x.x"

  # resource_count = 2
  # resources_ids  = [var.myresource_id_1, var.myresource_id_2]
  # or with named resources:
  resources_ids = {
    "myresource_1" = var.myresource_id_1
    "myresource_2" = var.myresource_id_2
  }

  behavior = "merge" # Must be "merge" or "overwrite"

  tags = {
    "foo"        = "bar"
    "monitoring" = "true"
  }
}
```

## Providers

| Name | Version |
|------|---------|
| azurerm | ~> 4.0 |
| terraform | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [terraform_data.main](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/resources/data) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| behavior | Behavior for tagging. Must be `merge` to keep existing or `overwrite` to replace tags. | `string` | `"merge"` | no |
| force | Whether this must be applied every time. | `bool` | `false` | no |
| interpreter | System interpreter to use for tagging script. Must be `bash` or `powershell`. | `string` | `"bash"` | no |
| resource\_count | Number of resources to tag. | `number` | `null` | no |
| resources\_ids | IDs of the Azure resources to tag. Can be a list of resource IDs or a map ('name' => 'resource ID'). | `any` | n/a | yes |
| tags | Tags to apply on resources. | `map(string)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
## Related documentation

Microsoft Azure tagging documentation: [docs.microsoft.com/fr-fr/azure/azure-resource-manager/resource-group-using-tags](https://docs.microsoft.com/fr-fr/azure/azure-resource-manager/resource-group-using-tags)
