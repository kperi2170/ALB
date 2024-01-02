output "alb_dns_name" {
  description = "DNS name of the ALB"
  value       = module.alb_ec2.alb_dns_name
}

output "target_group_arn" {
  description = "ARN of the target group"
  value       = module.alb_ec2.target_group_arn
}