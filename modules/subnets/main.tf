data "aws_availability_zones" "available" {}

resource "aws_subnet" "public" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_cidr
  availability_zone       = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "PublicSubnet"
  }
}

resource "aws_subnet" "private" {
  vpc_id            = var.vpc_id
  cidr_block        = var.private_subnet_cidr
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "PrivateSubnet"
  }
}

resource "aws_subnet" "db1" {
  vpc_id            = var.vpc_id
  cidr_block        = var.db_subnet_cidr_1
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "DBSubnet1"
  }
}

resource "aws_subnet" "db2" {
  vpc_id            = var.vpc_id
  cidr_block        = var.db_subnet_cidr_2
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "DBSubnet2"
  }
}
