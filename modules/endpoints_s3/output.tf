output "endpoint_arn" {
  description = "Endpoint ARN"
  value       = aws_dms_s3_endpoint.this[0].endpoint_arn
}

output "certificate_arn" {
  description = "Certificate ARN"
  value       = aws_dms_s3_endpoint.this[0].certificate_arn
}

output "kms_key_arn" {
  description = "KMS key ARN"
  value       = aws_dms_s3_endpoint.this[0].kms_key_arn
}

output "ssl_mode" {
  description = "SSL mode"
  value       = aws_dms_s3_endpoint.this[0].ssl_mode
}
