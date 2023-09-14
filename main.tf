terraform {
  backend "s3" {
    bucket = "igor-network-tfstate"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }
}

provider "aws" {
    
    default_tags {
        tags = {
            Owner   = "Igor Rossetti"
            Env     = "Prod"
            Class   = "CLC10"
        }
    }
  # Configuration options
}