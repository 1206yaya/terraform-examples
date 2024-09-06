terraform {
  required_version = "~> 1.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
  // 事前に手動で作成したS3バケットを指定
  backend "s3" {
    bucket = "terraform-tutorial-remote-backend-zakki"
    key    = "backends/state.tfstate"
  }
}

provider "aws" {
  region = "eu-west-1"
}
