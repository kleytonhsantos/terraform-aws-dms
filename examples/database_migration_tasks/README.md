# Example DMS for migration tasks

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| random | n/a |
| time | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| migration_tasks | ../../modules/database_migration_tasks/ |  |
| replication_instances | ../../modules/replication_instances/ |  |
| source_endpoint | ../../modules/endpoints/ |  |
| subnet_groups | ../../modules/subnet_groups/ |  |
| target_endpoint | ../../modules/endpoints/ |  |

## Resources

| Name |
|------|
| [aws_availability_zone](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zone) |
| [aws_availability_zones](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) |
| [aws_iam_policy_document](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) |
| [aws_iam_role_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) |
| [aws_iam_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) |
| [aws_security_groups](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/security_groups) |
| [aws_subnet_ids](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet_ids) |
| [aws_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) |
| [random_pet](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) |
| [random_shuffle](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/shuffle) |
| [time_static](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| tags | Tags created to organize resources in the Amazon Web Service (AWS) billing | `map` | <pre>{<br>  "Creator": "Terraform",<br>  "Environment": "Test",<br>  "Name": "DatabaseMigrateTasks",<br>  "Service": "DMS"<br>}</pre> | no |

## Outputs

No output.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
