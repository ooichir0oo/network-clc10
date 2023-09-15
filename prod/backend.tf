terraform {
  backend "s3" {
    bucket = "igor-network-tfstate"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
  }
}