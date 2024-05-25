module "parent" {
  source = "../terraform-modules/parent" 

  resources = {
    "example-vm"       = "virtual_machine"
    "example-keyvault" = "key_vault"
    "example-storage"  = "storage_account"
  }
}

output "generated_resource_names" {
  value = module.parent.resource_names
}

