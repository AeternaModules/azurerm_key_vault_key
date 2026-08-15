output "key_vault_keys_id" {
  description = "Map of id values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "key_vault_keys_curve" {
  description = "Map of curve values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.curve if v.curve != null && length(v.curve) > 0 }
}
output "key_vault_keys_e" {
  description = "Map of e values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.e if v.e != null && length(v.e) > 0 }
}
output "key_vault_keys_expiration_date" {
  description = "Map of expiration_date values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.expiration_date if v.expiration_date != null && length(v.expiration_date) > 0 }
}
output "key_vault_keys_key_opts" {
  description = "Map of key_opts values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.key_opts if v.key_opts != null && length(v.key_opts) > 0 }
}
output "key_vault_keys_key_size" {
  description = "Map of key_size values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.key_size if v.key_size != null }
}
output "key_vault_keys_key_type" {
  description = "Map of key_type values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.key_type if v.key_type != null && length(v.key_type) > 0 }
}
output "key_vault_keys_key_vault_id" {
  description = "Map of key_vault_id values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.key_vault_id if v.key_vault_id != null && length(v.key_vault_id) > 0 }
}
output "key_vault_keys_n" {
  description = "Map of n values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.n if v.n != null && length(v.n) > 0 }
}
output "key_vault_keys_name" {
  description = "Map of name values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.name if v.name != null && length(v.name) > 0 }
}
output "key_vault_keys_not_before_date" {
  description = "Map of not_before_date values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.not_before_date if v.not_before_date != null && length(v.not_before_date) > 0 }
}
output "key_vault_keys_public_key_openssh" {
  description = "Map of public_key_openssh values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.public_key_openssh if v.public_key_openssh != null && length(v.public_key_openssh) > 0 }
}
output "key_vault_keys_public_key_pem" {
  description = "Map of public_key_pem values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.public_key_pem if v.public_key_pem != null && length(v.public_key_pem) > 0 }
}
output "key_vault_keys_release_policy" {
  description = "Map of release_policy values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => one(v.release_policy) if v.release_policy != null && length(v.release_policy) > 0 }
}
output "key_vault_keys_resource_id" {
  description = "Map of resource_id values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.resource_id if v.resource_id != null && length(v.resource_id) > 0 }
}
output "key_vault_keys_resource_versionless_id" {
  description = "Map of resource_versionless_id values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.resource_versionless_id if v.resource_versionless_id != null && length(v.resource_versionless_id) > 0 }
}
output "key_vault_keys_rotation_policy" {
  description = "Map of rotation_policy values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => one(v.rotation_policy) if v.rotation_policy != null && length(v.rotation_policy) > 0 }
}
output "key_vault_keys_tags" {
  description = "Map of tags values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "key_vault_keys_version" {
  description = "Map of version values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.version if v.version != null && length(v.version) > 0 }
}
output "key_vault_keys_versionless_id" {
  description = "Map of versionless_id values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.versionless_id if v.versionless_id != null && length(v.versionless_id) > 0 }
}
output "key_vault_keys_x" {
  description = "Map of x values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.x if v.x != null && length(v.x) > 0 }
}
output "key_vault_keys_y" {
  description = "Map of y values across all key_vault_keys, keyed the same as var.key_vault_keys"
  value       = { for k, v in azurerm_key_vault_key.key_vault_keys : k => v.y if v.y != null && length(v.y) > 0 }
}

