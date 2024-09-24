region               = "us-east-1"
service_name         = "chip"
cluster_name         = "poc-cluster-ecs"
service_port         = 8080
service_cpu          = 256
service_memory       = 512
service_launch_type  = "EC2"
service_task_count   = 3
ssm_vpc_id           = "/vpc-containers/vpc/vpc_id"
ssm_listener         = "/dbasoft/ecs/lb/listener"
ssm_private_subnet_1 = "/vpc-containers/vpc/subnet_private_1a"
ssm_private_subnet_2 = "/vpc-containers/vpc/subnet_private_1b"
ssm_private_subnet_3 = "/vpc-containers/vpc/subnet_private_1c"

service_hosts = [
  "chip.dbasoft.demo"
]

environment_variables = [
  {
    name  = "FOO",
    value = "BAR"
  },
  {
    name  = "PING"
    value = "PONG"
  }
]

capabilities = ["EC2"]

service_healthcheck = {
  healthy_threshold   = 3
  unhealthy_threshold = 10
  timeout             = 10
  interval            = 60
  matcher             = "200-399"
  path                = "/healthcheck"
  port                = 8080
}