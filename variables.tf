variable "name" {
  description = "The ESS Scaling rule name."
  type        = string
  default     = "ess-scaling-rule-config"
}

variable "adjustment_type" {
  description = "Scaling Total Capacity."
  type        = string
  default     = "TotalCapacity"
}

variable "name_regex" {
  description = "Scaling name regex."
  type        = string
  default     = "^ubuntu_18.*64"
}

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

variable "rule_cidr_ip" {
  description = "Rule cidr ip."
  type        = string
  default     = "172.16.0.0/24"
}

variable "force_delete" {
  description = "Rule force delete."
  type        = string
  default     = "true"
}

variable "removal_policies" {
  description = "Rule removal policies."
  type        = list(string)
  default     = ["OldestInstance","NewestInstance"]
}

variable "availability_zone" {
  description = "The available zone to launch modules."
  type        = string
  default     = ""
}

variable "vswitch_id" {
  description = "VSwitch variables, if vswitch_id is empty, then the net_type = classic."
  type        = string
  default     = ""
}

variable "security_group_id" {
  description = "A list of security group ids to associate with."
  type        = string
  default     = ""
}