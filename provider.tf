provider "aws" {
  region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket = "jh-terraform-state"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}
