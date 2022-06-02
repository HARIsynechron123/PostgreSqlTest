provider "aws" {
  region = "eu-west-2"
}

resource "aws_db_instance" "example" {
  allocated_storage    = 20
  engine               = "postgres"
  identifier           =  "dev-db"     
  engine_version       = "13"
  instance_class       = "db.t3.medium"
  db_name              = "mypostgreSql"
  username             = "dbadmin1"
  password             = "bdadmin123"
  skip_final_snapshot  = true
  publicly_accessible  = true

}

output "db_name" {
  value = "${aws_db_instance.example.db_name}"
}