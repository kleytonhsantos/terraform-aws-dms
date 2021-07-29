output "event_subscription_arn" {
  description = "Event subscription"
  value       = aws_dms_event_subscription.this.*.arn
}
