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
  # --- Unconfirmed validation candidates, derived from azurerm_key_vault_key's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from keyvault.ValidateNestedItemName] !ok
  # path: name
  #   condition: length(value) <= 127
  #   message:   [from keyvault.ValidateNestedItemName: invalid when len(value) > 127]
  #   source:    [from keyvault.ValidateNestedItemName: invalid when len(value) > 127]
  # path: name
  #   source:    [from keyvault.ValidateNestedItemName] !regexp.MustCompile(`^[0-9a-zA-Z-]+$`).MatchString(v.(string))
  # path: key_vault_id
  #   source:    [from validationFunctionForResourceID] !ok
  # path: key_vault_id
  #   source:    [from validationFunctionForResourceID] err != nil
  # path: key_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: key_opts[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: not_before_date
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: expiration_date
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: release_policy.json
  #   source:    validation.StringIsJSON(...) - no translation rule yet, add one
  # path: rotation_policy.expire_after
  #   source:    validate.ISO8601DurationBetween: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: rotation_policy.notify_before_expiry
  #   source:    validate.ISO8601DurationBetween: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: rotation_policy.automatic.time_after_creation
  #   source:    [from validate.ISO8601Duration] !ok
  # path: rotation_policy.automatic.time_after_creation
  #   source:    [from validate.ISO8601Duration] err != nil
  # path: rotation_policy.automatic.time_before_expiry
  #   source:    [from validate.ISO8601Duration] !ok
  # path: rotation_policy.automatic.time_before_expiry
  #   source:    [from validate.ISO8601Duration] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

