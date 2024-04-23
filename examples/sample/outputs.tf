output "key_pairs" {
  description = "EC2 instance key pair"
  value       = module.ec2_key_pair.key_pair
}
