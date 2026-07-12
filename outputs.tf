output "key_vault_keys_id" {
  description = "Map of id values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.id }
}
output "key_vault_keys_curve" {
  description = "Map of curve values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.curve }
}
output "key_vault_keys_e" {
  description = "Map of e values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.e }
}
output "key_vault_keys_expiration_date" {
  description = "Map of expiration_date values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.expiration_date }
}
output "key_vault_keys_key_opts" {
  description = "Map of key_opts values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.key_opts }
}
output "key_vault_keys_key_size" {
  description = "Map of key_size values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.key_size }
}
output "key_vault_keys_key_type" {
  description = "Map of key_type values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.key_type }
}
output "key_vault_keys_key_vault_id" {
  description = "Map of key_vault_id values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.key_vault_id }
}
output "key_vault_keys_n" {
  description = "Map of n values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.n }
}
output "key_vault_keys_name" {
  description = "Map of name values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.name }
}
output "key_vault_keys_not_before_date" {
  description = "Map of not_before_date values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.not_before_date }
}
output "key_vault_keys_public_key_openssh" {
  description = "Map of public_key_openssh values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.public_key_openssh }
}
output "key_vault_keys_public_key_pem" {
  description = "Map of public_key_pem values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.public_key_pem }
}
output "key_vault_keys_release_policy" {
  description = "Map of release_policy values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.release_policy }
}
output "key_vault_keys_resource_id" {
  description = "Map of resource_id values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.resource_id }
}
output "key_vault_keys_resource_versionless_id" {
  description = "Map of resource_versionless_id values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.resource_versionless_id }
}
output "key_vault_keys_rotation_policy" {
  description = "Map of rotation_policy values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.rotation_policy }
}
output "key_vault_keys_tags" {
  description = "Map of tags values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.tags }
}
output "key_vault_keys_version" {
  description = "Map of version values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.version }
}
output "key_vault_keys_versionless_id" {
  description = "Map of versionless_id values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.versionless_id }
}
output "key_vault_keys_x" {
  description = "Map of x values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.x }
}
output "key_vault_keys_y" {
  description = "Map of y values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.y }
}

