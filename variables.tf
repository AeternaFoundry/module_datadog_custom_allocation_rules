variable "custom_allocation_rules" {
  description = <<EOT
Map of custom_allocation_rules, attributes below
Required:
    - rule_ids
Optional:
    - override_ui_defined_resources
EOT

  type = map(object({
    rule_ids                      = list(string)
    override_ui_defined_resources = optional(bool)
  }))
}

