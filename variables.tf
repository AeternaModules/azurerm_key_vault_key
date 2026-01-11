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
    rotation_policy = optional(object({
      automatic = optional(object({
        time_after_creation = optional(string)
        time_before_expiry  = optional(string)
      }))
      expire_after         = optional(string)
      notify_before_expiry = optional(string)
    }))
  }))
}

