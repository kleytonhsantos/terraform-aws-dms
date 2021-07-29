# AWS Database Migration Service (DMS) Terraform module

## Features

AWS Database Migration Service (AWS DMS) is a cloud service that makes it easy to migrate relational databases, data warehouses, NoSQL databases, and other types of data stores. You can use AWS DMS to migrate your data into the AWS Cloud or between combinations of cloud and on-premises setups.

## Usage

<details>
  <summary>Certificates:</summary>

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
  <summary>Database Migration Tasks:</summary>

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

## Examples

- [certificates](https://github.com/kleytonhsantos/terraform-aws-dms/tree/main/examples/certificates) - Module built to import certificates to Amazon Web Service DMS.
- [database_migration_tasks](https://github.com/kleytonhsantos/terraform-aws-dms/tree/main/examples/database_migration_tasks) - The module builds the Amazon Web Service DMS migration task.
## Authors

Module is maintained by [Kleyton Santos](https://github.com/kleytonhsantos) with help from [these awesome contributors](https://github.com/kleytonhsantos/terraform-aws-dms/graphs/contributors).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/kleytonhsantos/terraform-aws-dms/LICENSE) for full details.
