#which provideers and version of the providers
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.12.0"
    }
  }

  backend "s3" {
    bucket = "terraform-k8-course123"
    key    = "loops123"
    region = "us-east-2"
    dynamodb_table = "terraform-lock"
  }
}

provider "aws" {
  # Configuration 
  region = "us-east-2"
}