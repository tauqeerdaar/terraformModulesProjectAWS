variable "ec2_ami" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_pair_name" {
  description = "Key pair name for EC2 instance"
  type        = string
}

variable "web_sg_id" {
  description = "Security group ID for web servers"
  type        = string
}
