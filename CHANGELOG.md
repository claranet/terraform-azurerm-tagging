## 6.0.2 (2024-10-04)

### Documentation

* update README badge to use OpenTofu registry 1c042e8

### Continuous Integration

* **AZ-1391:** enable semantic-release [skip ci] 0a47005
* **AZ-1391:** update semantic-release config [skip ci] b86ddbf

### Miscellaneous Chores

* **deps:** add renovate.json 1e383b8
* **deps:** enable automerge on renovate b1a104a
* **deps:** update dependency opentofu to v1.7.0 f3589ab
* **deps:** update dependency opentofu to v1.7.1 9fe4133
* **deps:** update dependency opentofu to v1.7.2 70d9fbb
* **deps:** update dependency opentofu to v1.7.3 22ef004
* **deps:** update dependency opentofu to v1.8.1 42bc873
* **deps:** update dependency opentofu to v1.8.2 22000f4
* **deps:** update dependency pre-commit to v3.7.1 ada77d6
* **deps:** update dependency pre-commit to v3.8.0 0f41424
* **deps:** update dependency terraform-docs to v0.18.0 ab97a73
* **deps:** update dependency tflint to v0.51.0 5393bb4
* **deps:** update dependency tflint to v0.51.1 ba1f730
* **deps:** update dependency tflint to v0.51.2 b94d0b5
* **deps:** update dependency tflint to v0.52.0 463946c
* **deps:** update dependency trivy to v0.50.2 8555be8
* **deps:** update dependency trivy to v0.50.4 ace7374
* **deps:** update dependency trivy to v0.51.0 67ba557
* **deps:** update dependency trivy to v0.51.1 bf7086c
* **deps:** update dependency trivy to v0.51.2 24ca016
* **deps:** update dependency trivy to v0.51.4 484726e
* **deps:** update dependency trivy to v0.52.0 6100a4d
* **deps:** update dependency trivy to v0.52.1 8e59b6f
* **deps:** update dependency trivy to v0.52.2 f7dcdb4
* **deps:** update dependency trivy to v0.53.0 e805152
* **deps:** update dependency trivy to v0.54.1 8b98d5b
* **deps:** update dependency trivy to v0.55.0 2a516fe
* **deps:** update dependency trivy to v0.55.1 2591d2b
* **deps:** update dependency trivy to v0.55.2 a154552
* **deps:** update dependency trivy to v0.56.1 2f481a3
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.17.0 2387ece
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.18.0 5d76993
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.0 9c87cfe
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.1 7486073
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.3 9b56f59
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.93.0 c04439e
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.0 e1d3edc
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.1 5746c82
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.2 ceb01b4
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.3 7772d11
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.95.0 2813896
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.96.0 dc10eae
* **deps:** update renovate.json 1d4c031
* **deps:** update tools c0cb339
* **deps:** update tools f073d80
* **deps:** update tools 613afb3
* **pre-commit:** update commitlint hook e7e2200
* **release:** remove legacy `VERSION` file fb634be

# v6.0.1 - 2023-03-03

Fixed
  * AZ-1019: Allow map of tags with `null` values. Will discard keys with `null` values.

# v6.0.0 - 2023-01-13

Added
  * [GH-3](https://github.com/claranet/terraform-azurerm-tagging/pull/3): Add Powershell support

# v3.0.3/v4.0.2 - 2022-01-03

Changed
  * AZ-572: Revamp examples and improve CI

# v3.0.2/v4.0.1 - 2021-08-27

Changed
  * AZ-532: Revamp README with latest `terraform-docs` tool

# v3.0.1/v4.0.0 - 2020-10-20

Changed
  * AZ-273: Update README and CI, module compatible Terraform 0.13+ (now requires Terraform 0.12.26 minimum version)

# v3.0.0 - 2020-08-24

Fixed:
  * AZ-250: Fix Error when using merge : "Invalid Tag Name"

Note: This module is compatible with any version of the AzureRM terraform provider.

# v2.0.1 - 2020-02-25

Fixed:
  * AZ-65: Escape CLI parameters

# v2.0.0 - 2020-02-17

Changed:
  * AZ-157: New input `nb_resources` to count the number of resources. Change `resource_id` to `resource_ids`.

Breaking
  * AZ-94: Upgrade to terraform 0.12

# v1.0.0 - 2019-05-06

Added
  * AZ-65: First version
