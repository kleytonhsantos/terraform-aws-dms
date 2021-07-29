# Example DMS for replication instance

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| random | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| replication_instances | ../../modules/replication_instances/ |  |
| subnet_groups | ../../modules/subnet_groups/ |  |

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

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| tags | Tags created to organize resources in the Amazon Web Service (AWS) billing | `map` | <pre>{<br>  "Creator": "Terraform",<br>  "Environment": "Test",<br>  "Name": "ReplicationInstances",<br>  "Service": "DMS"<br>}</pre> | no |

## Outputs

No output.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
