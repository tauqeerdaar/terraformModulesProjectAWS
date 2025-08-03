output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public.id
}

output "private_subnet_id" {
  description = "ID of the private subnet"
  value       = aws_subnet.private.id
}

output "db_subnet_ids" {
  description = "List of DB subnet IDs"
  value       = [aws_subnet.db1.id, aws_subnet.db2.id]
}
