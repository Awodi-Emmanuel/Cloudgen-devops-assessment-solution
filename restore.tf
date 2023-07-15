provider "aws" {
  region = "us-east-1"
}

# Define the RDS instance for restoration
resource "aws_db_instance" "restored_rds" {
  engine            = "mysql"
  instance_class    = "db.t2.micro"
  allocated_storage = 20
  identifier        = "restored-rds"
  username          = "admin"
  password          = "password123_"

  # Restore from snapshot
  snapshot_identifier = "cloudgen-rds"
}
