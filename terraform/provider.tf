terraform {
  backend "s3" {
    bucket = "${var.state_bucket}"
    key = "${var.app_name}"
    region = "${var.aws_region}"
  }
}

provider "aws" {
  region = "${var.aws_region}"
}