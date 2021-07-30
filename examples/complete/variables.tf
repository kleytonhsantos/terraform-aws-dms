variable "tags" {
  description = "Tags created to organize resources in the Amazon Web Service (AWS) billing"
  default = {
    Name        = "Complete"
    Service     = "DMS"
    Environment = "Test"
    Creator     = "Terraform"
  }
}
