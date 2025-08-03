resource "aws_db_instance" "mysql" {
  identifier             = "terry-rds-instance"
  allocated_storage      = var.db_allocated_storage
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = var.rds_instance_type
  db_name                = "users"
  username               = var.db_username
  password               = var.db_password
  db_subnet_group_name   = var.db_subnet_group_name
  vpc_security_group_ids = [var.db_security_group_id]
  publicly_accessible    = false
  skip_final_snapshot    = true

  tags = {
    Name = "TerryRDSInstance"
  }
}
