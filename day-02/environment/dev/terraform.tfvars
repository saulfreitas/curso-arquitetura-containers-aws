project_name = "poc-cluster-ecs"

region = "us-east-1"

# SSM VPC Parameters #
ssm_vpc_id           = "/vpc-containers/vpc/vpc_id"
ssm_public_subnet_1  = "/vpc-containers/vpc/subnet_public_1a"
ssm_public_subnet_2  = "/vpc-containers/vpc/subnet_public_1b"
ssm_public_subnet_3  = "/vpc-containers/vpc/subnet_public_1c"
ssm_private_subnet_1 = "/vpc-containers/vpc/subnet_private_1a"
ssm_private_subnet_2 = "/vpc-containers/vpc/subnet_private_1b"
ssm_private_subnet_3 = "/vpc-containers/vpc/subnet_private_1c"

# LOAD Balancer #
load_balancer_internal = false
load_balancer_type     = "application"

# ECS General #
nodes_ami                      = "ami-0a5f593ecaa0f722d"
node_instance_type             = "t3a.large"
node_volume_size               = "50"
node_volume_type               = "gp3"
cluster_on_demand_min_size     = 2
cluster_on_demand_max_size     = 4
cluster_on_demand_desired_size = 3

cluster_spot_min_size     = 2
cluster_spot_max_size     = 4
cluster_spot_desired_size = 3

# IAM Role #
role_name = "ecsInstanceRole"
