# Module DMS for import certificates

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
| [aws_dms_certificate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dms_certificate) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| certificate\_id | (Required) The certificate identifier. | `string` | `""` | no |
| certificate\_pem | (Optional) The contents of the .pem X.509 certificate file for the certificate. Either certificate\_pem or certificate\_wallet must be set. | `string` | `""` | no |
| certificate\_wallet | (Optional) The contents of the Oracle Wallet certificate for use with SSL, provided as a base64-encoded String. Either certificate\_pem or certificate\_wallet must be set. | `string` | `""` | no |
| create | (Optional, Default: false) For the resource to be created use true | `bool` | `false` | no |
| tags | Tags for certificate | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| certificate\_arn | Certificate ARN |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
