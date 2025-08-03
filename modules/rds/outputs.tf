output "db_instance_id" {
  description = "ID of the RDS instance"
  value       = aws_db_instance.mysql.id
}
