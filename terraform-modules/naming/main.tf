locals {
  resource_name = {
    virtual_machine  = format("vm-%s-00", substr(var.base_name, 0, 15 - 6))  # 6 characters reserved for "vm-" and "-00"
    key_vault        = format("kv-%s", lower(var.base_name))
    storage_account  = format("sa%s", replace(lower(var.base_name), "-", ""))
  }
}

resource "null_resource" "naming" {}

