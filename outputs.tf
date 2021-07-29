locals {
  this_ess_scaling_rule_id = alicloud_ess_scaling_rule.default.id
}

output "this_ess_scaling_rule_id" {
  description = "The ID of the Rule"
  value       = local.this_ess_scaling_rule_id
}
