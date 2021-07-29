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

variable "engine_name" {
  description = "(Required) The type of engine for the endpoint. Can be one of aurora | aurora-postgresql| azuredb | db2 | docdb | dynamodb | elasticsearch | kafka | kinesis | mariadb | mongodb | mysql | oracle | postgres | redshift | s3 | sqlserver | sybase."
  type        = string
  default     = ""
}

variable "server_name" {
  description = "(Optional) The host name of the server."
  type        = string
  default     = ""
}

variable "service_access_role" {
  description = "(Optional) The Amazon Resource Name (ARN) used by the service access IAM role for dynamodb endpoints."
  type        = string
  default     = ""
}

variable "port" {
  description = "(Required) Port the database runs on for this endpoint"
  type        = number
  default     = null
}

variable "ssl_mode" {
  description = "Optional, Default: none) The SSL mode to use for the connection. Can be one of none | require | verify-ca | verify-full"
  type        = string
  default     = "none"
}

variable "username" {
  description = "(Optional) The user name to be used to login to the endpoint database."
  type        = string
  default     = ""
}

variable "password" {
  description = "(Optional) The password to be used to login to the endpoint database."
  type        = string
  default     = ""
}

variable "database_name" {
  description = "(Optional) The name of the endpoint database."
  type        = string
  default     = ""
}

variable "extra_connection_attributes" {
  description = "(Optional) Additional attributes associated with the connection."
  type        = string
  default     = ""
}

variable "kms_key_arn" {
  description = "(Required when engine_name is mongodb, optional otherwise)"
  type        = string
  default     = ""
}

variable "elasticsearch_settings" {
  description = "(Optional) Configuration block with Elasticsearch settings."
  type        = any
  default     = {}
}

variable "kafka_settings" {
  description = "(Optional) Configuration block with Kafka settings. Detailed below"
  type        = any
  default     = {}
}

variable "kinesis_settings" {
  description = "(Optional) Configuration block with Kinesis settings. Detailed below."
  type        = any
  default     = {}
}

variable "mongodb_settings" {
  description = "(Optional) Configuration block with MongoDB settings."
  type        = any
  default     = {}
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
