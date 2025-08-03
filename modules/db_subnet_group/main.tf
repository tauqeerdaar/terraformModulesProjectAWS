resource "aws_db_subnet_group" "this" {
  name       = "db-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "DBSubnetGroup"
  }

  lifecycle {
    prevent_destroy = false
  }
}
