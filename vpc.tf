resource "aws_vpc" "Test-vpc" {
  cidr_block           = "10.50.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name        = "gitvpc"
    Owner       = "Krishna Reddy"
    environment = "production"
   costcenter = 9090
  }
}
resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.Test-vpc.id
  tags = {
    Name = "Test-IGW"
  }
}
