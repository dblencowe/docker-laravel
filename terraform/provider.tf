terraform {
  backend "s3" {
    bucket = "state.qa.closeit.co.uk"
    key = "gdpr-api"
    region = "eu-west-1"
  }
}

provider "aws" {
  region = "${var.aws_region}"
}