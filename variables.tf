variable "vswitch_id" {
  description = "(Deprecated from version 1.3.0) VSwitch variables, if vswitch_id is empty, then the net_type = classic."
  type        = string
  default     = ""
}

#alicloud_instance_types
variable "availability_zone" {
  description = "The available zone to launch modules."
  type        = string
  default     = ""
}

variable "cpu_core_count" {
  description = "Filter the results to a specific number of cpu cores."
  type        = number
  default     = 2
}

variable "memory_size" {
  description = "Filter the results to a specific memory size in GB."
  type        = number
  default     = 4
}

#alicloud_images
variable "name_regex" {
  description = "Scaling name regex."
  type        = string
  default     = "^ubuntu_18.*64"
}

variable "most_recent" {
  description = "If more than one result are returned, select the most recent one."
  type        = bool
  default     = true
}

variable "owners" {
  description = "Filter results by a specific image owner. Valid items are system, self, others, marketplace."
  type        = string
  default     = "system"
}

#alicloud_security_group_rule
variable "rule_type" {
  description = "Rule type."
  type        = string
  default     = "ingress"
}

variable "rule_ip_protocol" {
  description = "Rule ip protocol."
  type        = string
  default     = "tcp"
}

variable "nic_type" {
  description = "Rule nic type."
  type        = string
  default     = "intranet"
}

variable "rule_policy" {
  description = "Rule policy."
  type        = string
  default     = "accept"
}

variable "rule_port_range" {
  description = "Rule port range."
  type        = string
  default     = "22/22"
}

variable "priority" {
  description = "Authorization policy priority, with parameter values: 1-100, default value: 1."
  type        = number
  default     = 1
}

variable "security_group_id" {
  description = "A list of security group ids to associate with."
  type        = string
  default     = ""
}

variable "rule_cidr_ip" {
  description = "Rule cidr ip."
  type        = string
  default     = "172.16.0.0/24"
}

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
  default     = ""
}

variable "vswitch_ids" {
  description = "List of virtual switch IDs in which the ecs instances to be launched."
  type        = list(string)
  default     = []
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
  default     = true
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