output "replication_task_arn" {
  description = "Replication task ARN"
  value       = aws_dms_replication_task.this[0].replication_task_arn
}
