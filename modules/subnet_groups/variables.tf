variable "create" {
  description = "(Optional, Default false) Used for Creating subnet groups"
  type        = bool
  default     = false
}

variable "replication_subnet_group_description" {
  description = "(Required) The description for the subnet group."
  type        = string
  default     = ""
}

variable "replication_subnet_group_id" {
  description = "(Required) The name for the replication subnet group. This value is stored as a lowercase string."
  type        = string
  default     = ""
}


variable "subnet_ids" {
  description = "(Optional) A list of VPC security group IDs to be used with the replication instance."
  type        = any
  default     = []
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
