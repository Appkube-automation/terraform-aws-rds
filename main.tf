provider "aws" {
    region = var.region
}
resource "aws_rds_cluster" "rds-cluster" {
  cluster_identifier  = var.cluster_identifier
  engine              = var.engine
  engine_version      = var.engine_version
  #availability_zones  = var.availability_zones
  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1e"]
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
  db_subnet_group_name = aws_db_subnet_group.subnetgroup.name
}

resource "aws_db_subnet_group" "subnetgroup" {
  name       = "main"
  subnet_ids = ["subnet-07630e0e427e128cd", "subnet-0d55dad9d07e7b7ad", "subnet-0f74ce01b4f309938"]
}
