# Module DMS database migration task

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
| [aws_dms_replication_task](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dms_replication_task) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cdc\_start\_time | (Optional) The Unix timestamp integer for the start of the Change Data Capture (CDC) operation. | `string` | `""` | no |
| create | (Opcional) The variable migration task | `bool` | `false` | no |
| migration\_type | (Required) The migration type. Can be one of full-load \| cdc \| full-load-and-cdc. | `string` | `"full-load"` | no |
| replication\_instance\_arn | (Required) The Amazon Resource Name (ARN) of the replication instance. | `string` | `""` | no |
| replication\_task\_id | (Required) The replication task identifier. | `string` | `""` | no |
| replication\_task\_settings | (Optional) An escaped JSON string that contains the task settings. | `string` | `""` | no |
| source\_endpoint\_arn | (Required) The Amazon Resource Name (ARN) string that uniquely identifies the source endpoint. | `string` | `""` | no |
| table\_mappings | (Required) An escaped JSON string that contains the table mappings. | `string` | `""` | no |
| tags | (Optional) A map of tags to assign to the resource. | `map(string)` | `{}` | no |
| target\_endpoint\_arn | (Required) The Amazon Resource Name (ARN) string that uniquely identifies the target endpoint. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| replication\_task\_arn | Replication task ARN |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
