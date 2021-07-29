variable "tags" {
  description = "Tags created to organize resources in the Amazon Web Service (AWS) billing"
  default = {
    Name        = "DatabaseMigrateTasks"
    Service     = "DMS"
    Environment = "Test"
    Creator     = "Terraform"
  }
}
