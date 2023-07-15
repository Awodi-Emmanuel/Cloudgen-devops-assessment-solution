provider "aws" {
  region = "us-east-1"
}


resource "aws_db_instance" "cloudgen_rds" {
  engine            = "mysql"
  instance_class    = "db.t2.micro"
  allocated_storage = 20
  identifier        = "cloudgen-rds"
  username          = "admin"
  password          = "password123_"

  
  backup_retention_period = 7
  backup_window           = "03:00-04:00"
  maintenance_window      = "wed:05:00-wed:06:00"
}
