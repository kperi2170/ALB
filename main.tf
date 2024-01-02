resource "aws_lb" "example" {
  name               = var.alb_name
  internal           = var.alb_internal
  load_balancer_type = "application"
  security_groups    = [var.alb_security_group]
  subnets            = var.alb_subnets

  enable_deletion_protection = var.alb_enable_deletion_protection
}

resource "aws_lb_target_group" "example" {
  name     = var.target_group_name
  port     = var.target_group_port
  protocol = var.target_group_protocol
  vpc_id   = var.target_group_vpc_id

  health_check {
    path = var.target_group_health_check_path
  }
}

resource "aws_lb_target_group_attachment" "example" {
  target_group_arn = aws_lb_target_group.example.arn
  target_id        = var.target_instance_id
}

resource "aws_lb_listener" "example" {
  load_balancer_arn = aws_lb.example.arn
  port              = var.listener_port
  protocol          = var.listener_protocol

  default_action {
    type             = "fixed-response"
    status_code      = "200"
    content_type     = "text/plain"
    content_encoding = "text"
    value            = "OK"
  }

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.example.arn
  }
}