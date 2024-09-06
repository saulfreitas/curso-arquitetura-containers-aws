resource "aws_ssm_parameter" "lb_arn" {
  name  = "/dbasoft/ecs/lb/id"
  type  = "String"
  value = aws_lb.alb.arn
}

resource "aws_ssm_parameter" "lb_listener" {
  name  = "/dbasoft/ecs/lb/listener"
  type  = "String"
  value = aws_lb_listener.listener.arn
}