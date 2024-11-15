resource "aws_launch_configuration" "app_launch_config" {
  name          = var.launch_config_name
  image_id      = var.ami_id
  instance_type = var.instance_type
  security_groups = var.security_groups
}

resource "aws_autoscaling_group" "app_asg" {
  launch_configuration = aws_launch_configuration.app_launch_config.id
  desired_capacity     = var.desired_capacity
  max_size             = var.max_size
  min_size             = var.min_size
  vpc_zone_identifier  = var.subnets
}

output "asg_name" {
  value = aws_autoscaling_group.app_asg.name
}
