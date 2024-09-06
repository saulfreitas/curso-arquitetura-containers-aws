resource "aws_lb" "alb" {
  name               = format("%s-load-balancer", var.project_name)
  internal           = var.load_balancer_internal
  load_balancer_type = var.load_balancer_type

  security_groups = [aws_security_group.lb.id]

  subnets = [
    data.aws_ssm_parameter.subnet_public_1a.value,
    data.aws_ssm_parameter.subnet_public_1b.value,
    data.aws_ssm_parameter.subnet_public_1c.value
  ]

  enable_deletion_protection       = false
  enable_cross_zone_load_balancing = false

}

resource "aws_lb_listener" "listener" {
  load_balancer_arn = aws_lb.alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "Service is running successfully"
      status_code  = "200"
    }
  }
}

