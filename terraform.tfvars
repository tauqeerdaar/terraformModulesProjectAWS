vpc_cidr_block       = "10.0.0.0/16"
public_subnet_cidr   = "10.0.1.0/24"
private_subnet_cidr  = "10.0.2.0/24"
db_subnet_cidr_1     = "10.0.3.0/24"
db_subnet_cidr_2     = "10.0.4.0/24"

db_username          = "admin"
#db_password          = "your-secure-password"
rds_instance_type    = "db.t3.micro"
db_allocated_storage = 20

ec2_ami              = "ami-05ffe3c48a9991133"
instance_type        = "t2.micro"
#key_pair_name        = "your-keypair"

aws_region           = "us-east-1"
