

resource "aws_db_instance" "app_db" {
allocated_storage = 20
engine = "mysql"
engine_version = "8.0"
instance_class = "db.t2.micro"
db_name = "temp"
username = "temp"
password = "temptemp"
vpc_security_group_ids = [aws_security_group.sg.id]
db_subnet_group_name = aws_db_subnet_group.app_db_subnet_group.name
skip_final_snapshot = true
}

# DB subnet group
resource "aws_db_subnet_group" "app_db_subnet_group" {
name = "app-db-subnet-group"
subnet_ids = [aws_subnet.public_subnet.id, aws_subnet.public_subnet2.id]
}
