provider "aws" {
  region = "us-east-1"
}
resource "aws_db_instance" "cloudgen_rds" {
  engine            = "mysql"
  instance_class    = "db.t2.micro"
  allocated_storage = 20
  username          = "admin"
  password          = "password123_"

  backup_retention_period = 0
  backup_window           = "03:00-04:00"
  maintenance_window      = "wed:05:00-wed:06:00"
  # skip_final_snapshot       = true
  # final_snapshot_identifier = "my-final-snapshot"
  lifecycle {
    prevent_destroy = true
  }

}
resource "aws_db_snapshot" "cloudgen_db_snapshot" {
  db_instance_identifier = aws_db_instance.cloudgen_rds.identifier
  db_snapshot_identifier = "cloudgen-db-snapshot"
  depends_on             = [aws_db_instance.cloudgen_rds]
}
output "db_instance_id" {
  value = aws_db_instance.cloudgen_rds.identifier
}