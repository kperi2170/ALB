alb_name                        = "my-alb"
alb_internal                    = false
alb_security_group              = "sg-xxxxxxxxxxxxxxxxx"
alb_subnets                     = ["subnet-xxxxxxxxxxxxxxxxx", "subnet-yyyyyyyyyyyyyyyyy"]
alb_enable_deletion_protection  = false

target_group_name               = "my-target-group"
target_group_port               = 80
target_group_protocol           = "HTTP"
target_group_vpc_id             = "vpc-xxxxxxxxxxxxxxxxx"
target_group_health_check_path  = "/"

listener_port                   = 80
listener_protocol               = "HTTP"

target_instance_id              = "i-xxxxxxxxxxxxxxxxx"