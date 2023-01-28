variable "create" {
  description = "(Opcional) Used to create the Data Migration Service"
  type        = bool
  default     = false
}

variable "certificate_arn" {
  description = "(Optional, Default: empty string) The Amazon Resource Name (ARN) for the certificate."
  type        = string
  default     = ""
}

variable "endpoint_type" {
  description = "(Required) The type of endpoint. Can be one of source | target"
  type        = string
  default     = "source"
}

variable "endpoint_id" {
  description = "(Required) The database endpoint identifier."
  type        = string
  default     = ""
}

variable "ssl_mode" {
  description = "Optional, Default: none) The SSL mode to use for the connection. Can be one of none | require | verify-ca | verify-full"
  type        = string
  default     = "none"
}

variable "kms_key_arn" {
  description = "(Required when engine_name is mongodb, optional otherwise)"
  type        = string
  default     = ""
}

variable "s3_settings" {
  description = "(Optional) Configuration block with S3 settings. Detailed below."
  type        = any
  default     = {}
}

variable "tags" {
  description = "(Optional) A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
