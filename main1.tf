provider "aws" {
  region = "us-west-2"
}

module "alb_ec2" {
  source = "../alb-ec2-module"  # Adjust the path accordingly

  alb_name                        = var.alb_name
  alb_internal                    = var.alb_internal
  alb_security_group              = var.alb_security_group
  alb_subnets                     = var.alb_subnets
  alb_enable_deletion_protection  = var.alb_enable_deletion_protection

  target_group_name               = var.target_group_name
  target_group_port               = var.target_group_port
  target_group_protocol           = var.target_group_protocol
  target_group_vpc_id             = var.target_group_vpc_id
  target_group_health_check_path  = var.target_group_health_check_path

  listener_port                   = var.listener_port
  listener_protocol               = var.listener_protocol

  target_instance_id              = var.target_instance_id
}

