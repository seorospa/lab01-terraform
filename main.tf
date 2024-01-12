provider "aws" {
  region = "us-east-1"
}

locals {
  my-ip = "${var.my-ip}/32"
}
