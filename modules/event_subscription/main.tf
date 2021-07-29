resource "aws_dms_event_subscription" "this" {
  count = var.create ? 1 : 0

  name             = var.name
  event_categories = var.event_categories
  sns_topic_arn    = var.sns_topic_arn
  source_ids       = var.source_ids
  source_type      = var.source_type

  tags = var.tags
}
