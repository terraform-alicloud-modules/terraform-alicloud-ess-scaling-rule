output "this_ess_scaling_rule_id" {
  description = "The ID of the ess scaling rule."
  value       = alicloud_ess_scaling_rule.default.id
}

output "this_ess_scaling_group_id" {
  description = "The ID of the ess scaling group."
  value       = alicloud_ess_scaling_group.default.id
}

output "this_ess_scaling_group_name" {
  description = "The ID of the ess scaling group name."
  value       = alicloud_ess_scaling_group.default.scaling_group_name
}