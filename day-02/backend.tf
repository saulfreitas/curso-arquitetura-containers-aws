terraform {
  backend "s3" {
    bucket = "terraform-aws-containers"
    key    = "ecs/dev/state"
    region = "us-east-1"

  }
}