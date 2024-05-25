output "resource_names" {
  description = "The generated names for all resources"
  value       = { for k, v in module.naming : k => v.resource_name }
}

