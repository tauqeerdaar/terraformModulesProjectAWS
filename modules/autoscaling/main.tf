resource "aws_autoscaling_group" "this" {
  name                = "TerryASG"
  max_size            = 5
  min_size            = 3
  desired_capacity    = 3
  vpc_zone_identifier = [var.public_subnet_id]

  launch_template {
    id      = var.launch_template_id
    version = "$Latest"
  }

  force_delete = true

  tag {
    key                 = "Name"
    value               = "TerryASG"
    propagate_at_launch = true
  }
}
