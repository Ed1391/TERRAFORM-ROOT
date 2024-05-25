output "resource_name" {
  description = "The generated name for the resource"
  value       = local.resource_name[var.resource_type]
}

