variable "alb_name" {
  description = "Name for the ALB"
  type        = string
}

variable "alb_internal" {
  description = "Boolean flag to indicate if the ALB is internal"
  type        = bool
  default     = false
}

variable "alb_security_group" {
  description = "Security group for the ALB"
  type        = string
}

variable "alb_subnets" {
  description = "List of subnets for the ALB"
  type        = list(string)
}

variable "alb_enable_deletion_protection" {
  description = "Enable deletion protection for the ALB"
  type        = bool
  default     = false
}

variable "target_group_name" {
  description = "Name for the target group"
  type        = string
}

variable "target_group_port" {
  description = "Port for the target group"
  type        = number
}

variable "target_group_protocol" {
  description = "Protocol for the target group"
  type        = string
}

variable "target_group_vpc_id" {
  description = "VPC ID for the target group"
  type        = string
}

variable "target_group_health_check_path" {
  description = "Health check path for the target group"
  type        = string
}

variable "listener_port" {
  description = "Port for the ALB listener"
  type        = number
}

variable "listener_protocol" {
  description = "Protocol for the ALB listener"
  type        = string
}

variable "target_instance_id" {
  description = "ID of the target EC2 instance"
  type        = string
}