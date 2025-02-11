terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.83.0" # Match the highest required version
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