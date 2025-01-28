# ---------------------------------------------
# Terraform configuration
# ---------------------------------------------
terraform {
  required_version = ">=1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket  = "udemy-nagata-tfstate-bucket"
    key     = "tastylog-dev.tfstate"
    region  = "ap-northeast-1"
    profile = "pf-1-sandbox-sso"
  }
}

# ---------------------------------------------
# Provider
# ---------------------------------------------
provider "aws" {
  profile = "pf-1-sandbox-sso"
  region  = "ap-northeast-1"
}

provider "aws" {
  alias   = "virginia"
  profile = "pf-1-sandbox-sso"
  region  = "us-east-1"
}
