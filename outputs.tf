
output "key_pair" {
  value = { for k, v in var.public_keys : k => { key_name = aws_key_pair.ec2[k].key_name
  key_pair_id = aws_key_pair.ec2[k].key_pair_id } }
}
