variable "name" {
  description = "The ESS Scaling rule name."
  type        = string
  default     = "essscalingruleconfig"
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

variable "vpc_cidr_block" {
  description = "VPC cidr block."
  type        = string
  default     = "172.16.0.0/16"
}

variable "vswitch_cidr_block" {
  description = "VSwitch cidr block."
  type        = string
  default     = "172.16.0.0/24"
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
