resource "aws_launch_template" "this" {
  name_prefix   = "TerryLaunchTemplate"

  image_id      = var.ec2_ami
  instance_type = var.instance_type
  key_name      = var.key_pair_name

  vpc_security_group_ids = [var.web_sg_id]

  user_data = base64encode(<<EOF
#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
EOF
  )
}
