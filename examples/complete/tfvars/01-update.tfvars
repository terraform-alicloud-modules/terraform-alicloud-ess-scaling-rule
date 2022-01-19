#alicloud_ess_scaling_group
min_size         = 2
max_size         = 2
name             = "update-tf-ess-scaling-rule"
removal_policies = ["OldestScalingConfiguration"]

#alicloud_ess_scaling_configuration
force_delete = true

#alicloud_ess_scaling_rule
adjustment_type  = "QuantityChangeInCapacity"
adjustment_value = 2