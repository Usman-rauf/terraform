resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "public" {
  count = 2
  cidr_block = cidrsubnet(var.vpc_cidr, 4, count.index)
  vpc_id     = aws_vpc.main.id
  map_public_ip_on_launch = true
}

resource "aws_subnet" "private" {
  count = 2
  cidr_block = cidrsubnet(var.vpc_cidr, 4, count.index + 2)
  vpc_id     = aws_vpc.main.id
}
