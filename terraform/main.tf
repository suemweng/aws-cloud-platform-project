terraform {
  required_version = ">= 1.16.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "local-dev"
}

resource "aws_ecr_repository" "app" {
  name                 = "cloud-platform-app"
  image_tag_mutability = "IMMUTABLE"
}