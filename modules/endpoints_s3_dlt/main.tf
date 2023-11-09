resource "aws_dms_dlt_s3_endpoint" "this" {
  count = var.create ? 1 : 0

  certificate_arn = var.certificate_arn
  endpoint_type   = var.endpoint_type
  endpoint_id     = "${var.endpoint_id}-${var.endpoint_type}"
  ssl_mode        = var.ssl_mode
  kms_key_arn     = var.kms_key_arn

  bucket_name = var.s3_settings[0]["bucket_name"]

  bucket_folder                    = lookup(var.s3_settings[0], "bucket_folder", null)
  external_table_definition        = lookup(var.s3_settings[0], "external_table_definition", null)
  service_access_role_arn          = lookup(var.s3_settings[0], "service_access_role_arn", null)
  compression_type                 = lookup(var.s3_settings[0], "compression_type", "NONE")
  csv_delimiter                    = lookup(var.s3_settings[0], "csv_delimiter", ",")
  csv_row_delimiter                = lookup(var.s3_settings[0], "csv_row_delimiter", null)
  date_partition_enabled           = lookup(var.s3_settings[0], "date_partition_enabled", false)
  data_format                      = lookup(var.s3_settings[0], "data_format", "csv")
  date_partition_delimiter         = lookup(var.s3_settings[0], "date_partition_delimiter", "NONE")
  date_partition_sequence          = lookup(var.s3_settings[0], "date_partition_sequence", "YYYYMMDD")
  timestamp_column_name            = lookup(var.s3_settings[0], "timestamp_column_name", "dmsTimestamp")
  include_op_for_full_load         = lookup(var.s3_settings[0], "include_op_for_full_load", false)
  parquet_timestamp_in_millisecond = lookup(var.s3_settings[0], "parquet_timestamp_in_millisecond", false)
  parquet_version                  = lookup(var.s3_settings[0], "parquet_version", "parquet-1-0")
  enable_statistics                = lookup(var.s3_settings[0], "enable_statistics", true)
  preserve_transactions            = lookup(var.s3_settings[0], "preserve_transactions", false)

  tags = var.tags
}
