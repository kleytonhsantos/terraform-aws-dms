# Example DMS for import certificates

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| random | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| certificates | ../../modules/certificates/ |  |

## Resources

| Name |
|------|
| [random_pet](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| tags | Tags created to organize resources in the Amazon Web Service (AWS) billing | `map` | <pre>{<br>  "Creator": "Terraform",<br>  "Environment": "Test",<br>  "Name": "Certificate",<br>  "Service": "DMS"<br>}</pre> | no |

## Outputs

No output.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
