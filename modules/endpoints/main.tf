resource "aws_dms_endpoint" "this" {
  count = var.create ? 1 : 0

  certificate_arn             = var.certificate_arn
  endpoint_type               = var.endpoint_type
  endpoint_id                 = "${var.endpoint_id}-${var.endpoint_type}"
  engine_name                 = var.engine_name
  server_name                 = var.server_name
  port                        = var.port
  ssl_mode                    = var.ssl_mode
  username                    = var.username
  password                    = var.password
  database_name               = var.database_name
  extra_connection_attributes = var.extra_connection_attributes
  service_access_role         = var.service_access_role
  kms_key_arn                 = var.kms_key_arn

  dynamic "s3_settings" {
    for_each = var.s3_settings
    iterator = s3

    content {
      bucket_name = s3.value["bucket_name"]

      bucket_folder                    = lookup(s3.value, "bucket_folder", null)
      external_table_definition        = lookup(s3.value, "external_table_definition", null)
      service_access_role_arn          = lookup(s3.value, "service_access_role_arn", null)
      compression_type                 = lookup(s3.value, "compression_type", "NONE")
      csv_delimiter                    = lookup(s3.value, "csv_delimiter", ",")
      csv_row_delimiter                = lookup(s3.value, "csv_row_delimiter", null)
      date_partition_enabled           = lookup(s3.value, "date_partition_enabled", false)
      data_format                      = lookup(s3.value, "data_format", "csv")
      date_partition_delimiter         = lookup(s3.value, "date_partition_delimiter", "NONE")
      date_partition_sequence          = lookup(s3.value, "date_partition_sequence", "YYYYMMDD")
      include_op_for_full_load         = lookup(s3.value, "include_op_for_full_load", false)
      parquet_timestamp_in_millisecond = lookup(s3.value, "parquet_timestamp_in_millisecond", false)
      parquet_version                  = lookup(s3.value, "parquet_version", "parquet-1-0")
      enable_statistics                = lookup(s3.value, "enable_statistics", true)
      preserve_transactions            = lookup(s3.value, "preserve_transactions", false)
    }
  }

  dynamic "mongodb_settings" {
    for_each = var.mongodb_settings
    iterator = mo

    content {
      auth_source = mo.value["auth_source"]

      auth_mechanism      = lookup(mo.value, "auth_mechanism", "default")
      auth_type           = lookup(mo.value, "auth_type", "admin")
      docs_to_investigate = lookup(mo.value, "docs_to_investigate", 1000)
      extract_doc_id      = lookup(mo.value, "extract_doc_id", false)
      nesting_level       = lookup(mo.value, "nesting_level", "one")
    }
  }

  dynamic "kinesis_settings" {
    for_each = var.kinesis_settings
    iterator = ki

    content {
      message_format          = lookup(ki.value, "message_format", "json")
      stream_arn              = lookup(ki.value, "stream_arn", null)
      service_access_role_arn = lookup(ki.value, "service_access_role_arn", null)
    }
  }

  dynamic "kafka_settings" {
    for_each = var.kafka_settings
    iterator = ka

    content {
      broker = ka.value["broker_name"]

      topic = lookup(ka.value, "topic", "kafka-default-topic")
    }
  }

  dynamic "elasticsearch_settings" {
    for_each = var.elasticsearch_settings
    iterator = el

    content {
      endpoint_uri = el.value["endpoint_uri"]

      error_retry_duration       = lookup(el.value, "error_retry_duration", 300)
      full_load_error_percentage = lookup(el.value, "full_load_error_percentage", 10)
      service_access_role_arn    = lookup(el.value, "service_access_role_arn", null)
    }
  }

  tags = var.tags
}
