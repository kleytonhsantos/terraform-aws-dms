# Module DMS for replication instances

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
| [aws_dms_replication_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dms_replication_instance) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| allocated\_storage | (Optional, Default: 50, Min: 5, Max: 6144) The amount of storage (in gigabytes) to be initially allocated for the replication instance. | `number` | `5` | no |
| allow\_major\_version\_upgrade | (Optional, Default: false) Indicates that major version upgrades are allowed. | `bool` | `false` | no |
| apply\_immediately | (Optional, Default: false) Indicates whether the changes should be applied immediately or during the next maintenance window. Only used when updating an existing resource. | `bool` | `true` | no |
| auto\_minor\_version\_upgrade | (Optional, Default: false) Indicates that minor engine upgrades will be applied automatically to the replication instance during the maintenance window. | `bool` | `false` | no |
| availability\_zone | (Optional) The EC2 Availability Zone that the replication instance will be created in. | `string` | `""` | no |
| create | (Optional, Default false) Used for Creating Instances, Used for Database modifications and Used for destroying databases. | `bool` | `false` | no |
| engine\_version | (Optional) The engine version number of the replication instance. | `string` | `"3.4.4"` | no |
| kms\_key\_arn | (Optional) The Amazon Resource Name (ARN) for the KMS key that will be used to encrypt the connection parameters. | `string` | `""` | no |
| multi\_az | (Optional) Specifies if the replication instance is a multi-az deployment. You cannot set the availability\_zone parameter if the multi\_az parameter is set to true. | `bool` | `false` | no |
| preferred\_maintenance\_window | (Optional) The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC). | `string` | `"sun:10:30-sun:14:30"` | no |
| publicly\_accessible | (Optional, Default: false) Specifies the accessibility options for the replication instance. | `bool` | `false` | no |
| replication\_instance\_class | (Required) The compute and memory capacity of the replication instance as specified by the replication instance class. | `string` | `"dms.t3.micro"` | no |
| replication\_instance\_id | (Required) The replication instance identifier. This parameter is stored as a lowercase string. | `string` | `""` | no |
| replication\_subnet\_group\_id | (Optional) A subnet group to associate with the replication instance. | `any` | `[]` | no |
| tags | A map of tags to add to all resources | `map(string)` | `{}` | no |
| vpc\_security\_group\_ids | (Optional) A list of VPC security group IDs to be used with the replication instance. | `any` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| replication\_instance\_arn | Replication instance ARN |
| replication\_instance\_id | Replication instance ID's |
| replication\_instance\_private\_ips | Replication instance private IP's |
| replication\_instance\_public\_ips | Replication instance public IP's |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
