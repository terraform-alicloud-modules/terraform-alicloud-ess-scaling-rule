#alicloud_ess_scaling_group
variable "min_size" {
  description = "Minimum number of ECS instances in the scaling group."
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of ECS instances in the scaling group."
  type        = number
  default     = 1
}

variable "name" {
  description = "The ESS Scaling rule name."
  type        = string
  default     = "tf-ess-scaling-rule"
}

variable "removal_policies" {
  description = "Rule removal policies."
  type        = list(string)
  default     = ["OldestInstance", "NewestInstance"]
}

#alicloud_ess_scaling_configuration
variable "force_delete" {
  description = "Rule force delete."
  type        = bool
  default     = false
}

#alicloud_ess_scaling_rule
variable "adjustment_type" {
  description = "Scaling Total Capacity."
  type        = string
  default     = "TotalCapacity"
}

variable "adjustment_value" {
  description = "The number of ECS instances to be adjusted in the scaling rule."
  type        = number
  default     = 1
}