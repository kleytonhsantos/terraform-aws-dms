variable "create" {
  description = "(Opcional) The variable migration task"
  type        = bool
  default     = false
}

variable "cdc_start_time" {
  description = "(Optional) The Unix timestamp integer for the start of the Change Data Capture (CDC) operation."
  type        = string
  default     = ""
}

variable "migration_type" {
  description = "(Required) The migration type. Can be one of full-load | cdc | full-load-and-cdc."
  type        = string
  default     = "full-load"
}

variable "replication_instance_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the replication instance."
  type        = string
  default     = ""
}

variable "replication_task_id" {
  description = "(Required) The replication task identifier."
  type        = string
  default     = ""
}

variable "source_endpoint_arn" {
  description = "(Required) The Amazon Resource Name (ARN) string that uniquely identifies the source endpoint."
  type        = string
  default     = ""
}

variable "target_endpoint_arn" {
  description = "(Required) The Amazon Resource Name (ARN) string that uniquely identifies the target endpoint."
  type        = string
  default     = ""
}

variable "table_mappings" {
  description = "(Required) An escaped JSON string that contains the table mappings."
  type        = string
  default     = ""
}

variable "replication_task_settings" {
  description = "(Optional) An escaped JSON string that contains the task settings."
  type        = string
  default     = ""
}

variable "tags" {
  description = "(Optional) A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
