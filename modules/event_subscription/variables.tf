variable "create" {
  description = "(Optional, Default: true) Whether the event subscription should be enabled."
  type        = bool
  default     = true
}

variable "name" {
  description = "(Required) Name of event subscription."
  type        = string
  default     = ""
}

variable "event_categories" {
  description = "(Optional) List of event categories to listen for, see DescribeEventCategories for a canonical list"
  type        = any
  default     = []
}

variable "source_type" {
  description = "(Optional, Default: all events) Type of source for events. Valid values: replication-instance or replication-task"
  type        = string
  default     = ""
}

variable "source_ids" {
  description = "(Required) Ids of sources to listen to)"
  type        = any
  default     = []
}

variable "sns_topic_arn" {
  description = "(Required) SNS topic arn to send events on"
  type        = string
  default     = ""
}
variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
