
locals {
  description = "name prefix for resources"
  name-prefix = lower("${var.org}-${var.proj}-${var.env}")
}


resource "aws_key_pair" "ec2" {
    for_each = var.public_keys
    key_name = "${local.name-prefix}-${each.key}"
    public_key = each.value
}
