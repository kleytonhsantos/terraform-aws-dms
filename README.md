# AWS Database Migration Service (DMS) Terraform module

## Features

AWS Database Migration Service (AWS DMS) is a cloud service that makes it easy to migrate relational databases, data warehouses, NoSQL databases, and other types of data stores. You can use AWS DMS to migrate your data into the AWS Cloud or between combinations of cloud and on-premises setups.

## Usage

<details>
  <summary>AWS DMS Certificates:</summary>

```hcl
module "certificates" {
  source = "../../modules/certificates/"

  create = true

  certificate_id  = "name"
  certificate_pem = file("path_pem_file")

  tags = var.tags
}
```
</details>

<details>
  <summary>AWS DMS Database Migration Tasks:</summary>

```hcl
module "migration_tasks" {
  source = "github.com/kleytonhsantos/terraform-aws-dms//modules/database_migration_tasks?ref=v1.0.1"
pef
  create = true

  cdc_start_time            = "timestamp"
  migration_type            = "full-load-and-cdc"
  replication_task_id       = "replication-1.example.com"
  replication_instance_arn  = "arn:aws:dms:us-east-1:123456789123:task:3QK6K5UPDEVILBQRLCXGJA5X5QN2O64SXYZ3TYS"
  source_endpoint_arn       = "arn:aws:dms:us-east-1:123456789123:endpoint:TREFHUQW63TJQQYQI7JJLFS5SZOF6LUH4E6J55Q"
  target_endpoint_arn       = "arn:aws:dms:us-east-1:123456789123:endpoint:TREFHUQW63TJQQYQI7JJLFS5SZOF6LUH4E6T66E"
  table_mappings            = file("./config/table_mappings.json")
  replication_task_settings = file("./config/replication_task_settings.json")

  tags = var.tags
}
```
</details>

<details>
  <summary>AWS DMS Endpoints:</summary>

```hcl
module "source_endpoint" {
  source = "github.com/kleytonhsantos/terraform-aws-dms//modules/endpoints?ref=v1.0.1"

  create = true

  endpoint_id                 = "replication-1.example.com"
  engine_name                 = "mysql"
  server_name                 = "database01.example.com"
  port                        = 3306
  username                    = root
  password                    = "root123"
  database_name               = "database_example"
  extra_connection_attributes = file("./config/extra_connection_attributes.json")

  tags = var.tags
}

module "target_endpoint" {
  source = "github.com/kleytonhsantos/terraform-aws-dms//modules/endpoints?ref=v1.0.1"

  create = true

  endpoint_id   = "replication-1.example.com"
  engine_name   = "s3"
  endpoint_type = "target"

  s3_settings = [{
    bucket_name             = s3.example.com"
    compression_type        = "GZIP"
  }]

  /* Examples
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

  tags = var.tags
}
```
</details>

<details>
  <summary>AWS DMS Event Subscription:</summary>

```hcl
module "event_subscription" {
 source = "github.com/kleytonhsantos/terraform-aws-dms//modules/event_subscription?ref=v1.0.1"

  create = true

  name             = "example1"
  sns_topic_arn    = arn:aws:sns:us-east-1:123456789012:dms
  source_type      = "replication-instance"
  source_ids       = [example01]
  event_categories = ["creation", "failure"]

  tags = var.tags
}
```
</details>

<details>
  <summary>AWS DMS Replication Instance:</summary>

```hcl
module "replication_instances" {
  source = "github.com/kleytonhsantos/terraform-aws-dms//modules/replication_instances?ref=v1.0.1"

  create = true

  replication_instance_id     = "name"
  vpc_security_group_ids      = "vpc-00b000f00"
  replication_subnet_group_id = "test_replication"
  availability_zone           = "us-east-1a"

  tags = var.tags
}
```
</details>

<details>
  <summary>AWS DMS Subnet Groups:</summary>

```hcl
module "subnet_groups" {

 source = "github.com/kleytonhsantos/terraform-aws-dms//modules/subnet_groups?ref=v1.0.1"

  create = true

  replication_subnet_group_description = "Example subnet groups for DMS"
  replication_subnet_group_id          = "Example subnet groups for DMS"

  subnet_ids = [
    subnet-0g2g5555g4g7g8g9w
    subnet-0g2g5555g4g7g8g9g
  ]

  tags = var.tags

}
```
</details>

## Examples

- [AWS DMS Certificates](https://github.com/kleytonhsantos/terraform-aws-dms/tree/main/examples/certificates) - Module built to import certificates to Amazon Web Service DMS.
- [AWS DMS Database Migration Tasks](https://github.com/kleytonhsantos/terraform-aws-dms/tree/main/examples/database_migration_tasks) - The module builds the Amazon Web Service DMS migration task.
- [AWS DMS Endpoints](https://github.com/kleytonhsantos/terraform-aws-dms/tree/main/examples/endpoints) - The module creates endpoints for DMS migration.
- [AWS DMS Event Subscription](https://github.com/kleytonhsantos/terraform-aws-dms/tree/main/examples/event_subscription) - The module creates an event on SNS for AWS DMS.
- [AWS DMS Replication Instance](https://github.com/kleytonhsantos/terraform-aws-dms/tree/main/examples/replication_instances) - The module creates an replication instance for AWS DMS.
- [AWS DMS Subnet Groups](https://github.com/kleytonhsantos/terraform-aws-dms/tree/main/examples/subnet_groups) - The module builds the DMS subnets.
- [AWS DMS Complete](https://github.com/kleytonhsantos/terraform-aws-dms/tree/main/examples/subnet_groups) - Complete.

## Authors

Module is maintained by [Kleyton Santos](https://github.com/kleytonhsantos) with help from [these awesome contributors](https://github.com/kleytonhsantos/terraform-aws-dms/graphs/contributors).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/kleytonhsantos/terraform-aws-dms/blob/main/LICENSE) for full details.
