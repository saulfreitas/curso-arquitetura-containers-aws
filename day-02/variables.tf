## General Configs ##

variable "project_name" {
  description = "Nome do projeto"
}

variable "region" {
  description = "Região da AWS onde os recursos serão criados"
}

## SSM VPC ##

variable "ssm_vpc_id" {
  description = "ID da VPC onde os recursos serão provisionados."
}

variable "ssm_public_subnet_1" {
  description = "ID da primeira subnet pública dentro da VPC especificada."
}

variable "ssm_public_subnet_2" {
  description = "ID da segunda subnet pública dentro da VPC especificada."
}

variable "ssm_public_subnet_3" {
  description = "ID da terceira subnet pública dentro da VPC especificada."
}

variable "ssm_private_subnet_1" {
  description = "ID da primeira subnet privada dentro da VPC especificada."
}

variable "ssm_private_subnet_2" {
  description = "ID da segunda subnet privada dentro da VPC especificada."
}

variable "ssm_private_subnet_3" {
  description = "ID da terceira subnet privada dentro da VPC especificada."
}

## Load Balancer ##

variable "load_balancer_internal" {
  description = "Define se o Load Balancer será interno (true) ou externo (false)."
}

variable "load_balancer_type" {
  description = "Especifica o tipo de Load Balancer"
}

## ECS General ##

variable "nodes_ami" {
  description = "AMI utilizada para as instâncias EC2 dos nós do cluster ECS"
}

variable "node_instance_type" {
  description = "Tipo de instância EC2 para os nós do cluster"
}

variable "node_volume_size" {
  description = "Tamanho do volume de armazenamento"
}

variable "node_volume_type" {
  description = "Tipo de volume de armazenamento"
}

variable "cluster_on_demand_min_size" {
  description = "Número mínimo de instâncias sob demanda no cluster."
}

variable "cluster_on_demand_max_size" {
  description = "Número máximo de instâncias sob demanda no cluster."
}

variable "cluster_on_demand_desired_size" {
  description = "Quantidade desejada de instâncias sob demanda no cluster."
}

variable "cluster_spot_min_size" {
  description = "Número mínimo de instâncias Spot no cluster."
}

variable "cluster_spot_max_size" {
  description = "Número máximo de instâncias Spot no cluster."
}

variable "cluster_spot_desired_size" {
  description = "Quantidade desejada de instâncias Spot no cluster."
}

## IAM Role ##

variable "role_name" {
  description = "Nome da role utilizada pelo cluster"
}
