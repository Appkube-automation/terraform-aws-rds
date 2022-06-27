provider "aws" {
    region = var.region
}
resource "aws_rds_cluster" "rds-cluster" {
  cluster_identifier  = var.cluster_identifier
  engine              = var.engine
  engine_version      = var.engine_version
  #availability_zones  = var.availability_zones
  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
  database_name       = var.database_name
  master_username     = var.master_username
  master_password     = var.master_password
  apply_immediately   = var.apply_immediately
  db_cluster_instance_class = var.db_cluster_instance_class
  storage_type        = var.storage_type
  allocated_storage   = var.allocated_storage
  iops                = var.iops
  skip_final_snapshot = var.skip_final_snapshot
  backup_retention_period = var.backup_retention_period
}