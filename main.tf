data "alicloud_instance_types" "default" {
  availability_zone = var.availability_zone
  cpu_core_count    = var.cpu_core_count
  memory_size       = var.memory_size
}

data "alicloud_images" "default" {
  name_regex  = var.name_regex
  most_recent = var.most_recent
  owners      = var.owners
}

resource "alicloud_security_group_rule" "default" {
  type              = var.rule_type
  ip_protocol       = var.rule_ip_protocol
  nic_type          = var.nic_type
  policy            = var.rule_policy
  port_range        = var.rule_port_range
  priority          = var.priority
  security_group_id = var.security_group_id
  cidr_ip           = var.rule_cidr_ip
}

resource "alicloud_ess_scaling_group" "default" {
  min_size           = var.min_size
  max_size           = var.max_size
  scaling_group_name = var.name
  vswitch_ids        = length(var.vswitch_ids) > 0 ? var.vswitch_ids : [var.vswitch_id]
  removal_policies   = var.removal_policies
}

resource "alicloud_ess_scaling_configuration" "default" {
  scaling_group_id  = alicloud_ess_scaling_group.default.id
  image_id          = data.alicloud_images.default.images[0].id
  instance_type     = data.alicloud_instance_types.default.instance_types[0].id
  security_group_id = var.security_group_id
  force_delete      = var.force_delete
}

resource "alicloud_ess_scaling_rule" "default" {
  scaling_group_id = alicloud_ess_scaling_group.default.id
  adjustment_type  = var.adjustment_type
  adjustment_value = var.adjustment_value
}