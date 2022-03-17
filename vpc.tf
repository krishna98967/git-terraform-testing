resource "aws_vpc" "Test-vpc" {
  cidr_block           = 17.18.0.0/16
  enable_dns_hostnames = true
  tags = {
    Name        = "gitvpc"
    Owner       = "Krishna Reddy"
    environment = "production"
  }
}