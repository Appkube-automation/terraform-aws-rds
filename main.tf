provider "aws" {
    region = var.region
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
  instance_count      = var.instance_count
  identifier          = var.identifier
  cluster_identifier  = aws_rds_cluster.rds-cluster.id
  instance_class      = var.instance_class
  engine              = aws_rds_cluster.rds-cluster.engine
  engine_version      = aws_rds_cluster.rds-cluster.engine_version
}
resource "aws_rds_cluster" "rds-cluster" {
  cluster_identifier  = var.cluster_identifier
  engine              = var.engine
  engine_version      = var.engine_version
  db_cluster_instance_class = var.db_cluster_instance_class
  storage_type        = var.storage_type
  iops                = var.iops
  availability_zones  = var.availability_zones
  database_name       = var.database_name
  master_username     = var.master_username
  master_password     = var.master_password
  skip_final_snapshot = var.skip_final_snapshot
  #final_snapshot_identifier = "false"
  #snapshot_identifier= "false"
  allocated_storage   = var.allocated_storage 
}