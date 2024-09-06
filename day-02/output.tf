output "load_balancer_dns" {
  description = "O nome DNS do Load Balancer criado."
  value       = aws_lb.alb.dns_name
}

output "lb_ssm_arn" {
  description = "ARN do parâmetro do AWS Systems Manager que armazena o ARN do Load Balancer"
  value       = aws_ssm_parameter.lb_arn.id
}

output "lb_ssm_listener" {
  description = "ID do parâmetro do AWS Systems Manager que armazena o Listener do Load Balancer"
  value       = aws_ssm_parameter.lb_listener.id
}