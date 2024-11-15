# ClickHouse EC2 Instance setup example
resource "aws_instance" "clickhouse_instance" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  security_groups = var.security_groups
  key_name        = var.key_name
}

output "clickhouse_instance_ip" {
  value = aws_instance.clickhouse_instance.public_ip
}
