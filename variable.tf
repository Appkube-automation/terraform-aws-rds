variable "region" {
  type = string
  default = "us-east-1"
}
variable "counti" {
  type = number
  default = 2
}
variable "identifier" {
  type = string
  default = "postgres"
}
variable "instance_class" {
  type = string
  default = "db.r5d.large"
}
variable "cluster_identifier" {
  type = string
  default = "zakir-terraform"
}
variable "engine" {
  type = string
  default = "postgres"
}
variable "engine_version" {
  type = string
  default = 13.4
}
variable "db_cluster_instance_class" {
  type = string
  default = "db.r5d.large"
}
variable "storage_type" {
  type = string
  default = "io1"
}
variable "iops" {
  type = number
  default = 1000
}
# variable "availability_zones" {
#   type = string
#   default = ["us-east-1a", "us-east-1b", "us-east-1c"]
# }
variable "database_name" {
  type = string
  default = "zakirdb"
}
variable "master_username" {
  type = string
  default = "zakir"
}
variable "master_password" {
  type = string
  default = "zakirpostgresql"
}
variable "skip_final_snapshot" {
  type = bool
  default = "true"
}
variable "allocated_storage" {
  type = number
  default = 100
}
variable "apply_immediately" {
  type = bool
  default = true
}
variable "backup_retention_period" {
  type = number
  default = 7
}
variable "cluster_identifier_prefix" {
  type = string
  default = "zakir"
}

variable "port" {
  type = number
  default = 5432
}

variable "kms_key_id" {
  type = string
  default = "arn:aws:kms:us-east-1:657907747545:key/2058b724-4b85-4978-a700-b6bcc6274f6e"
}

variable "storage_encrypted" {
  type = bool
  default = true
}