resource "aws_vpc" "lab01" {
  cidr_block = "10.0.0.0/16"

  enable_dns_hostnames = true

  tags = {
    Name = "Lab01-terraform"
  }
}
