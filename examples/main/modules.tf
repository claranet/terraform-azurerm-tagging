module "myresource_tagging" {
  source  = "claranet/tagging/azurerm"
  version = "x.x.x"

  resources_ids = [var.myresource_id_1, var.myresource_id_2]

  behavior = "merge" # Must be "merge" or "overwrite"

  tags = {
    "foo"        = "bar"
    "monitoring" = "true"
  }
}
