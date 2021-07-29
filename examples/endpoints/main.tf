resource "random_pet" "this" {}

provider "aws" {
  region = "us-east-1"
}

module "source_endpoint" {
  source = "../../modules/endpoints/"

  create = true

  endpoint_id                 = random_pet.this.id
  engine_name                 = "mysql"
  server_name                 = random_pet.this.id
  port                        = 3306
  username                    = random_pet.this.id
  password                    = random_pet.this.id
  database_name               = "test_${random_pet.this.id}"
  extra_connection_attributes = file("./config/extra_connection_attributes.json")

  tags = var.tags
}

module "target_endpoint" {
  source = "../../modules/endpoints/"

  create = true

  endpoint_id   = random_pet.this.id
  engine_name   = "s3"
  endpoint_type = "target"


  s3_settings = [{
    bucket_name             = random_pet.this.id
    compression_type        = "GZIP"
    service_access_role_arn = aws_iam_role.dms-vpc-role.arn
  }]

  /*
  mongodb_settings = [{
    auth_source = "mongo-test.example.com"
  }]

  kinesis_settings = [{
    message_format = "json-unformatted"
  }]

  kafka_settings = [{
    broker_name = "ec2-12-345-678-901.compute-1.amazonaws.com:2345,ec2-12-345-678-901.compute-1.amazonaws.com:9876"
  }]

  elasticsearch_settings = [{
    endpoint_uri = "test.elastsearch.example.com"
    service_access_role_arn = "arn:aws:iam::123456789012:role/aws-service-role/es.amazonaws.com/AWSServiceRoleForAmazonElasticsearchService"
  }]
*/

  depends_on = [
    aws_iam_role.dms-vpc-role
  ]

  tags = var.tags
}
