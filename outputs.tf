output "key_vault_keys" {
  description = "All key_vault_key resources"
  value       = azurerm_key_vault_key.key_vault_keys
}
output "key_vault_keys_curve" {
  description = "List of curve values across all key_vault_keys"
  value       = [for k, v in azurerm_key_vault_key.key_vault_keys : v.curve]
}
output "key_vault_keys_e" {
  description = "List of e values across all key_vault_keys"
  value       = [for k, v in azurerm_key_vault_key.key_vault_keys : v.e]
}
output "key_vault_keys_expiration_date" {
  description = "List of expiration_date values across all key_vault_keys"
  value       = [for k, v in azurerm_key_vault_key.key_vault_keys : v.expiration_date]
}
output "key_vault_keys_key_opts" {
  description = "List of key_opts values across all key_vault_keys"
  value       = [for k, v in azurerm_key_vault_key.key_vault_keys : v.key_opts]
}
output "key_vault_keys_key_size" {
  description = "List of key_size values across all key_vault_keys"
  value       = [for k, v in azurerm_key_vault_key.key_vault_keys : v.key_size]
}
output "key_vault_keys_key_type" {
  description = "List of key_type values across all key_vault_keys"
  value       = [for k, v in azurerm_key_vault_key.key_vault_keys : v.key_type]
}
output "key_vault_keys_key_vault_id" {
  description = "List of key_vault_id values across all key_vault_keys"
  value       = [for k, v in azurerm_key_vault_key.key_vault_keys : v.key_vault_id]
}
output "key_vault_keys_n" {
  description = "List of n values across all key_vault_keys"
  value       = [for k, v in azurerm_key_vault_key.key_vault_keys : v.n]
}
output "key_vault_keys_name" {
  description = "List of name values across all key_vault_keys"
  value       = [for k, v in azurerm_key_vault_key.key_vault_keys : v.name]
}
output "key_vault_keys_not_before_date" {
  description = "List of not_before_date values across all key_vault_keys"
  value       = [for k, v in azurerm_key_vault_key.key_vault_keys : v.not_before_date]
}
output "key_vault_keys_public_key_openssh" {
  description = "List of public_key_openssh values across all key_vault_keys"
  value       = [for k, v in azurerm_key_vault_key.key_vault_keys : v.public_key_openssh]
}
output "key_vault_keys_public_key_pem" {
  description = "List of public_key_pem values across all key_vault_keys"
  value       = [for k, v in azurerm_key_vault_key.key_vault_keys : v.public_key_pem]
}
output "key_vault_keys_release_policy" {
  description = "List of release_policy values across all key_vault_keys"
  value       = [for k, v in azurerm_key_vault_key.key_vault_keys : v.release_policy]
}
output "key_vault_keys_resource_id" {
  description = "List of resource_id values across all key_vault_keys"
  value       = [for k, v in azurerm_key_vault_key.key_vault_keys : v.resource_id]
}
output "key_vault_keys_resource_versionless_id" {
  description = "List of resource_versionless_id values across all key_vault_keys"
  value       = [for k, v in azurerm_key_vault_key.key_vault_keys : v.resource_versionless_id]
}
output "key_vault_keys_rotation_policy" {
  description = "List of rotation_policy values across all key_vault_keys"
  value       = [for k, v in azurerm_key_vault_key.key_vault_keys : v.rotation_policy]
}
output "key_vault_keys_tags" {
  description = "List of tags values across all key_vault_keys"
  value       = [for k, v in azurerm_key_vault_key.key_vault_keys : v.tags]
}
output "key_vault_keys_version" {
  description = "List of version values across all key_vault_keys"
  value       = [for k, v in azurerm_key_vault_key.key_vault_keys : v.version]
}
output "key_vault_keys_versionless_id" {
  description = "List of versionless_id values across all key_vault_keys"
  value       = [for k, v in azurerm_key_vault_key.key_vault_keys : v.versionless_id]
}
output "key_vault_keys_x" {
  description = "List of x values across all key_vault_keys"
  value       = [for k, v in azurerm_key_vault_key.key_vault_keys : v.x]
}
output "key_vault_keys_y" {
  description = "List of y values across all key_vault_keys"
  value       = [for k, v in azurerm_key_vault_key.key_vault_keys : v.y]
}

