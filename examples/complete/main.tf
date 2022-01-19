data "alicloud_zones" "default" {
}

resource "alicloud_security_group" "default" {
  vpc_id = module.vpc.this_vpc_id
}

module "vpc" {
  source             = "alibaba/vpc/alicloud"
  create             = true
  vpc_cidr           = "172.16.0.0/16"
  vswitch_cidrs      = ["172.16.0.0/21"]
  availability_zones = [data.alicloud_zones.default.zones.0.id]
}

module "example" {
  source = "../.."

  #alicloud_instance_types
  availability_zone = data.alicloud_zones.default.zones.0.id
  cpu_core_count    = 2
  memory_size       = 4

  #alicloud_images
  name_regex  = "^ubuntu_18.*64"
  most_recent = true
  owners      = "system"

  #alicloud_security_group_rule
  rule_type         = "ingress"
  rule_ip_protocol  = "tcp"
  nic_type          = "intranet"
  rule_policy       = "accept"
  rule_port_range   = "22/22"
  priority          = 1
  security_group_id = alicloud_security_group.default.id
  rule_cidr_ip      = "172.16.0.0/22"

  #alicloud_ess_scaling_group
  min_size         = var.min_size
  max_size         = var.max_size
  name             = var.name
  vswitch_ids      = module.vpc.this_vswitch_ids
  removal_policies = var.removal_policies

  #alicloud_ess_scaling_configuration
  force_delete = var.force_delete

  #alicloud_ess_scaling_rule
  adjustment_type  = var.adjustment_type
  adjustment_value = var.adjustment_value

}