variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
}

variable "db_subnet_cidr_1" {
  description = "CIDR block for DB subnet 1"
  type        = string
}

variable "db_subnet_cidr_2" {
  description = "CIDR block for DB subnet 2"
  type        = string
}
