provider "aws" {
}
# resource "aws_rds_cluster_instance" "cluster_ec2" {
#   count              = 1
#   identifier         = "postgres"
#   cluster_identifier = aws_rds_cluster.this.id
#   instance_class     = "db.r5d.large"
#   engine             = "postgres"
#   engine_version     = "13.4"
# }
resource "aws_rds_cluster_instance" "cluster_instances" {
  count              = 2
  identifier         = "postgres"
  cluster_identifier = aws_rds_cluster.this.id
  instance_class     = "db.r5d.large"
  engine             = aws_rds_cluster.this.engine
  engine_version     = aws_rds_cluster.this.engine_version
}
resource "aws_rds_cluster" "this" {
  cluster_identifier = "zakir-terraform"
  engine =              "postgres"
  engine_version = "13.4"
  db_cluster_instance_class = "db.r5d.large"
  storage_type = "io1"
  iops = 1000
  availability_zones = ["us-east-1a"]
  database_name      = "zakirdb"
  master_username    = "zakir"
  master_password    = "zakirpostgresql"
  skip_final_snapshot = "true"
  #final_snapshot_identifier = "false"
  #snapshot_identifier = "false"
  allocated_storage = 100
}