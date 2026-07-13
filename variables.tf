variable "key_vault_keys" {
  description = <<EOT
Map of key_vault_keys, attributes below
Required:
    - key_opts
    - key_type
    - key_vault_id
    - name
Optional:
    - curve
    - expiration_date
    - key_size
    - not_before_date
    - tags
    - release_policy (block):
        - immutable (optional)
        - json (required)
    - rotation_policy (block):
        - automatic (optional, block):
            - time_after_creation (optional)
            - time_before_expiry (optional)
        - expire_after (optional)
        - notify_before_expiry (optional)
EOT

  type = map(object({
    key_opts        = list(string)
    key_type        = string
    key_vault_id    = string
    name            = string
    curve           = optional(string)
    expiration_date = optional(string)
    key_size        = optional(number)
    not_before_date = optional(string)
    tags            = optional(map(string))
    release_policy = optional(object({
      immutable = optional(bool)
      json      = string
    }))
    rotation_policy = optional(object({
      automatic = optional(object({
        time_after_creation = optional(string)
        time_before_expiry  = optional(string)
      }))
      expire_after         = optional(string)
      notify_before_expiry = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.key_vault_keys : (
        length(v.name) <= 127
      )
    ])
    error_message = "[from keyvault.ValidateNestedItemName: invalid when len(value) > 127]"
  }
  validation {
    condition = alltrue([
      for k, v in var.key_vault_keys : (
        v.release_policy == null || (can(jsondecode(v.release_policy.json)))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.key_vault_keys : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 17 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

