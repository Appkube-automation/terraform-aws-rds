provider "aws" {
    region = var.region
}
resource "aws_rds_cluster" "rds-cluster" {
  cluster_identifier  = var.cluster_identifier
  engine              = var.engine
  engine_version      = var.engine_version
  #availability_zones  = var.availability_zones
  availability_zones = ["us-east-1f","us-east-1c","us-east-1d"]
  database_name       = var.database_name
  master_username     = var.master_username
  master_password     = var.master_password
  apply_immediately   = var.apply_immediately
  port                = var.port
  db_cluster_instance_class = var.db_cluster_instance_class
  storage_type        = var.storage_type
  allocated_storage   = var.allocated_storage
  iops                = var.iops
  skip_final_snapshot = var.skip_final_snapshot
  backup_retention_period = var.backup_retention_period
  db_subnet_group_name = aws_db_subnet_group.subnetgroup.name
  kms_key_id           = var.kms_key_id
  storage_encrypted    = var.storage_encrypted

}

resource "aws_db_subnet_group" "subnetgroup" {
  name       = "test-subnet-group3"
  subnet_ids = ["subnet-06790787cb8a07527", "subnet-03e846592ee978c88","subnet-05624843c1c687c5e"]
}
