terraform {
  backend "s3" {
    bucket = "tf-state-eks-jrs"
    key    = "eks/terraform.tfstate"
    region = var.aws_region
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}