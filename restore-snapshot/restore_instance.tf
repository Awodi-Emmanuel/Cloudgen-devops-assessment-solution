provider "aws" {
  region = "us-east-1"
}

data "terraform_remote_state" "main" {
  backend = "local"

  config = {
    path = "../terraform.tfstate"
  }
}

data "aws_db_snapshot" "existing_db_snapshot" {
  db_instance_identifier = data.terraform_remote_state.main.outputs.db_instance_id
  most_recent            = true
}
resource "null_resource" "trigger_restoration" {
  count = data.aws_db_snapshot.existing_db_snapshot.id != "" ? 1 : 0

  provisioner "local-exec" {
    command = "aws rds restore-db-instance-from-db-snapshot --db-instance-identifier restored-rds --db-snapshot-identifier ${data.aws_db_snapshot.existing_db_snapshot.id}"
  }
}

resource "aws_db_instance" "restored_rds" {
  depends_on = [null_resource.trigger_restoration]
  engine                    = "mysql"
  instance_class            = "db.t2.micro"
  allocated_storage         = 20
  identifier                = "restored-rds"
  username                  = "admin"
  password                  = "password123_"
  final_snapshot_identifier = data.aws_db_snapshot.existing_db_snapshot.id
}
