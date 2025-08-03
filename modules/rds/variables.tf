variable "db_username" {
  description = "RDS master username"
  type        = string
}

variable "db_password" {
  description = "RDS master password"
  type        = string
  sensitive   = true
}

variable "rds_instance_type" {
  description = "RDS instance type"
  type        = string
}

variable "db_allocated_storage" {
  description = "Allocated storage size in GB"
  type        = number
}

variable "db_subnet_group_name" {
  description = "DB subnet group name"
  type        = string
}

variable "db_security_group_id" {
  description = "Security group ID for the DB"
  type        = string
}
