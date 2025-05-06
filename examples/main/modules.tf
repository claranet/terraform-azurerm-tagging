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
