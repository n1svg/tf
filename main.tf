# Configure the AWS Provider

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.20.0"
    }
  }
}

provider "aws" {
  profile = "user1"
  region  = var.region
}

# Get resources
