# Module DMS for event subscription

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
| [aws_dms_event_subscription](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dms_event_subscription) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| create | (Optional, Default: true) Whether the event subscription should be enabled. | `bool` | `true` | no |
| event\_categories | (Optional) List of event categories to listen for, see DescribeEventCategories for a canonical list | `any` | `[]` | no |
| name | (Required) Name of event subscription. | `string` | `""` | no |
| sns\_topic\_arn | (Required) SNS topic arn to send events on | `string` | `""` | no |
| source\_ids | (Required) Ids of sources to listen to) | `any` | `[]` | no |
| source\_type | (Optional, Default: all events) Type of source for events. Valid values: replication-instance or replication-task | `string` | `""` | no |
| tags | A map of tags to add to all resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| event\_subscription\_arn | Event subscription |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
