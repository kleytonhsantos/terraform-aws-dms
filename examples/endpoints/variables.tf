variable "tags" {
  description = "Tags for creating the resource on Amazon Web Service (AWS)"
  default = {
    Name        = "Endpoint"
    Service     = "DMS"
    Environment = "Test"
    Creator     = "Terraform"
  }
}
