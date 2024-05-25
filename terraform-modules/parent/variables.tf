variable "resources" {
  description = "A map of base names to resource types"
  type        = map(string)
  validation {
    condition     = alltrue([for rt in values(var.resources) : contains(["virtual_machine", "key_vault", "storage_account"], rt)])
    error_message = "All resource types must be one of 'virtual_machine', 'key_vault', or 'storage_account'"
  }
}

