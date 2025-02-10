terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.38" # eks module requires more than 5.38
    }
  }

  backend "s3" {
    bucket         = "pka.in.net"
    key            = "eks"
    region         = "us-east-1"
    dynamodb_table = "pka.in.net-state"
  }
  
}

provider "aws" {
  region = "us-east-1"
}