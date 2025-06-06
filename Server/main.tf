terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  backend "s3" {
    bucket             = "mycomponents-tfstate"
    key                  = "state/terraform.tfstate"
    region             = "us-west-2"
    encrypt            = true
    dynamodb_table = "mycomponents_tf_lockid"
  }
