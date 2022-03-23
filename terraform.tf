terraform {
  required_providers {
    aws =  {
    source = "hashicorp/aws"
    version = ">= 2.7.0"
    }
  }
}

provider "aws" {
    region = "us-west-2"
}

resource "aws_s3_bucket" "terraform_backend_bucket" {
      bucket = "terraform-state-c2c0jxxbw9kycaxhqucynkbm01znjmq1a6mz5o2oi181e"
}

data = []
