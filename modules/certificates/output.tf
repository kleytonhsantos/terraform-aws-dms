output "certificate_arn" {
  description = "Certificate ARN"
  value       = aws_dms_certificate.this.*.certificate_arn
}
