resource "aws_db_instance" "app_db" {
  identifier              = var.db_identifier
  allocated_storage       = var.db_allocated_storage
  storage_type            = var.db_storage_type
  engine                  = var.db_engine
  engine_version          = var.db_engine_version
  instance_class          = var.db_instance_class
  username                = var.db_username
  password                = var.db_password
  publicly_accessible     = false
  vpc_security_group_ids  = var.db_security_groups
  skip_final_snapshot     = true
}

output "rds_endpoint" {
  value = aws_db_instance.app_db.endpoint
}
