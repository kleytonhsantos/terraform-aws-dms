output "replication_subnet_group_arn" {
  description = "Replication subnet group ARN"
  value       = aws_dms_replication_subnet_group.this.*.replication_subnet_group_arn
}

output "replication_subnet_group_id" {
  description = "Replication subnet group ID"
  value       = aws_dms_replication_subnet_group.this.*.replication_subnet_group_id
}

output "vpc_id" {
  description = "VPC id"
  value       = aws_dms_replication_subnet_group.this.*.vpc_id
}
