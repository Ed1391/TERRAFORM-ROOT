module "naming" {
  source = "../naming" 

  for_each = var.resources

  base_name    = each.key
  resource_type = each.value
}

resource "null_resource" "parent" {}

