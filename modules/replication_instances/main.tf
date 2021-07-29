resource "aws_dms_replication_instance" "this" {

  count = var.create ? 1 : 0

  replication_instance_id      = var.replication_instance_id
  replication_instance_class   = var.replication_instance_class
  engine_version               = var.engine_version
  allocated_storage            = var.allocated_storage
  vpc_security_group_ids       = var.vpc_security_group_ids
  multi_az                     = var.multi_az
  publicly_accessible          = var.publicly_accessible
  replication_subnet_group_id  = var.replication_subnet_group_id
  availability_zone            = var.availability_zone
  kms_key_arn                  = var.kms_key_arn
  preferred_maintenance_window = var.preferred_maintenance_window
  allow_major_version_upgrade  = var.allow_major_version_upgrade
  auto_minor_version_upgrade   = var.auto_minor_version_upgrade
  apply_immediately            = var.apply_immediately

  tags = var.tags
}
