variable "create" {
  description = "(Optional, Default false) Used for Creating Instances, Used for Database modifications and Used for destroying databases."
  type        = bool
  default     = false
}

variable "replication_instance_id" {
  description = "(Required) The replication instance identifier. This parameter is stored as a lowercase string."
  type        = string
  default     = ""
}

variable "replication_instance_class" {
  description = " (Required) The compute and memory capacity of the replication instance as specified by the replication instance class."
  type        = string
  default     = "dms.t3.micro"
}

variable "engine_version" {
  description = "(Optional) The engine version number of the replication instance."
  type        = string
  default     = "3.4.4"
}

variable "allocated_storage" {
  description = "(Optional, Default: 50, Min: 5, Max: 6144) The amount of storage (in gigabytes) to be initially allocated for the replication instance."
  type        = number
  default     = 5
}

variable "vpc_security_group_ids" {
  description = "(Optional) A list of VPC security group IDs to be used with the replication instance."
  type        = any
  default     = []
}

variable "multi_az" {
  description = "(Optional) Specifies if the replication instance is a multi-az deployment. You cannot set the availability_zone parameter if the multi_az parameter is set to true."
  type        = bool
  default     = false
}

variable "publicly_accessible" {
  description = "(Optional, Default: false) Specifies the accessibility options for the replication instance."
  type        = bool
  default     = false
}

variable "availability_zone" {
  description = "(Optional) The EC2 Availability Zone that the replication instance will be created in."
  type        = string
  default     = ""
}

variable "kms_key_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) for the KMS key that will be used to encrypt the connection parameters."
  type        = string
  default     = ""
}

variable "preferred_maintenance_window" {
  description = "(Optional) The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC)."
  type        = string
  default     = "sun:10:30-sun:14:30"
}

variable "allow_major_version_upgrade" {
  description = "(Optional, Default: false) Indicates that major version upgrades are allowed."
  type        = bool
  default     = false
}

variable "auto_minor_version_upgrade" {
  description = "(Optional, Default: false) Indicates that minor engine upgrades will be applied automatically to the replication instance during the maintenance window."
  type        = bool
  default     = false
}

variable "apply_immediately" {
  description = "(Optional, Default: false) Indicates whether the changes should be applied immediately or during the next maintenance window. Only used when updating an existing resource."
  type        = bool
  default     = true
}

variable "replication_subnet_group_id" {
  description = "(Optional) A subnet group to associate with the replication instance."
  type        = any
  default     = []
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
