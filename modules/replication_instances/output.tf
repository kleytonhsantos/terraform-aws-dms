output "replication_instance_arn" {
  description = "Replication instance ARN"
  value       = aws_dms_replication_instance.this.*.replication_instance_arn
}

output "replication_instance_id" {
  description = "Replication instance ID's"
  value       = aws_dms_replication_instance.this.*.replication_instance_id
}

output "replication_instance_private_ips" {
  description = "Replication instance private IP's"
  value       = aws_dms_replication_instance.this.*.replication_instance_private_ips
}

output "replication_instance_public_ips" {
  description = "Replication instance public IP's"
  value       = aws_dms_replication_instance.this.*.replication_instance_public_ips
}
