output "web_sg_id" {
  description = "ID of the Web Security Group"
  value       = aws_security_group.web_sg.id
}

output "db_sg_id" {
  description = "ID of the DB Security Group"
  value       = aws_security_group.db_sg.id
}
