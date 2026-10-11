output "custom_allocation_rules_id" {
  description = "Map of id values across all custom_allocation_rules, keyed the same as var.custom_allocation_rules except keys with no id are omitted"
  value       = { for k, v in datadog_custom_allocation_rules.custom_allocation_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "custom_allocation_rules_override_ui_defined_resources" {
  description = "Map of override_ui_defined_resources values across all custom_allocation_rules, keyed the same as var.custom_allocation_rules except keys with no override_ui_defined_resources are omitted"
  value       = { for k, v in datadog_custom_allocation_rules.custom_allocation_rules : k => v.override_ui_defined_resources if v.override_ui_defined_resources != null }
}
output "custom_allocation_rules_rule_ids" {
  description = "Map of rule_ids values across all custom_allocation_rules, keyed the same as var.custom_allocation_rules except keys with no rule_ids are omitted"
  value       = { for k, v in datadog_custom_allocation_rules.custom_allocation_rules : k => v.rule_ids if v.rule_ids != null && length(v.rule_ids) > 0 }
}

