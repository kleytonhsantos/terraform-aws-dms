output "endpoint_arn" {
  description = "Endipoint ARN"
  value       = aws_dms_endpoint.this.*.endpoint_arn
}

output "certificate_arn" {
  description = "Certificate ARN"
  value       = aws_dms_endpoint.this.*.certificate_arn
}

output "extra_connection_attributes" {
  description = "Extra connection attributes"
  value       = aws_dms_endpoint.this.*.extra_connection_attributes
}

output "kms_key_arn" {
  description = "KMS key ARN"
  value       = aws_dms_endpoint.this.*.kms_key_arn
}

output "ssl_mode" {
  description = "SSL mode"
  value       = aws_dms_endpoint.this.*.ssl_mode
}
