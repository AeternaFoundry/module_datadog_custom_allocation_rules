resource "datadog_custom_allocation_rules" "custom_allocation_rules" {
  for_each = var.custom_allocation_rules

  rule_ids                      = each.value.rule_ids
  override_ui_defined_resources = each.value.override_ui_defined_resources
}

