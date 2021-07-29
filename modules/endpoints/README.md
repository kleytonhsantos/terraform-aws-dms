# Module DMS for endpoint

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_dms_endpoint](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dms_endpoint) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| certificate\_arn | (Optional, Default: empty string) The Amazon Resource Name (ARN) for the certificate. | `string` | `""` | no |
| create | (Opcional) Used to create the Data Migration Service | `bool` | `false` | no |
| database\_name | (Optional) The name of the endpoint database. | `string` | `""` | no |
| elasticsearch\_settings | (Optional) Configuration block with Elasticsearch settings. | `any` | `{}` | no |
| endpoint\_id | (Required) The database endpoint identifier. | `string` | `""` | no |
| endpoint\_type | (Required) The type of endpoint. Can be one of source \| target | `string` | `"source"` | no |
| engine\_name | (Required) The type of engine for the endpoint. Can be one of aurora \| aurora-postgresql\| azuredb \| db2 \| docdb \| dynamodb \| elasticsearch \| kafka \| kinesis \| mariadb \| mongodb \| mysql \| oracle \| postgres \| redshift \| s3 \| sqlserver \| sybase. | `string` | `""` | no |
| extra\_connection\_attributes | (Optional) Additional attributes associated with the connection. | `string` | `""` | no |
| kafka\_settings | (Optional) Configuration block with Kafka settings. Detailed below | `any` | `{}` | no |
| kinesis\_settings | (Optional) Configuration block with Kinesis settings. Detailed below. | `any` | `{}` | no |
| kms\_key\_arn | (Required when engine\_name is mongodb, optional otherwise) | `string` | `""` | no |
| mongodb\_settings | (Optional) Configuration block with MongoDB settings. | `any` | `{}` | no |
| password | (Optional) The password to be used to login to the endpoint database. | `string` | `""` | no |
| port | (Required) Port the database runs on for this endpoint | `number` | `null` | no |
| s3\_settings | (Optional) Configuration block with S3 settings. Detailed below. | `any` | `{}` | no |
| server\_name | (Optional) The host name of the server. | `string` | `""` | no |
| service\_access\_role | (Optional) The Amazon Resource Name (ARN) used by the service access IAM role for dynamodb endpoints. | `string` | `""` | no |
| ssl\_mode | Optional, Default: none) The SSL mode to use for the connection. Can be one of none \| require \| verify-ca \| verify-full | `string` | `"none"` | no |
| tags | (Optional) A map of tags to assign to the resource. | `map(string)` | `{}` | no |
| username | (Optional) The user name to be used to login to the endpoint database. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| certificate\_arn | Certificate ARN |
| endpoint\_arn | Endipoint ARN |
| extra\_connection\_attributes | Extra connection attributes |
| kms\_key\_arn | KMS key ARN |
| ssl\_mode | SSL mode |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
