# Module DMS for subnet groups

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
| [aws_dms_replication_subnet_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dms_replication_subnet_group) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| create | (Optional, Default false) Used for Creating subnet groups | `bool` | `false` | no |
| replication\_subnet\_group\_description | (Required) The description for the subnet group. | `string` | `""` | no |
| replication\_subnet\_group\_id | (Required) The name for the replication subnet group. This value is stored as a lowercase string. | `string` | `""` | no |
| subnet\_ids | (Optional) A list of VPC security group IDs to be used with the replication instance. | `any` | `[]` | no |
| tags | A map of tags to add to all resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| replication\_subnet\_group\_arn | Replication subnet group ARN |
| replication\_subnet\_group\_id | Replication subnet group ID |
| vpc\_id | VPC id |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
