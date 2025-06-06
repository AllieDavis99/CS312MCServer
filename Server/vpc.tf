provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "Minecraft Server VPC"
    Project = "CS312 Final"
  }
}
