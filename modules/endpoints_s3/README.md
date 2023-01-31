<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dms_s3_endpoint.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dms_s3_endpoint) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_certificate_arn"></a> [certificate\_arn](#input\_certificate\_arn) | (Optional, Default: empty string) The Amazon Resource Name (ARN) for the certificate. | `string` | `""` | no |
| <a name="input_create"></a> [create](#input\_create) | (Opcional) Used to create the Data Migration Service | `bool` | `false` | no |
| <a name="input_endpoint_id"></a> [endpoint\_id](#input\_endpoint\_id) | (Required) The database endpoint identifier. | `string` | `""` | no |
| <a name="input_endpoint_type"></a> [endpoint\_type](#input\_endpoint\_type) | (Required) The type of endpoint. Can be one of source \| target | `string` | `"source"` | no |
| <a name="input_kms_key_arn"></a> [kms\_key\_arn](#input\_kms\_key\_arn) | (Required when engine\_name is mongodb, optional otherwise) | `string` | `""` | no |
| <a name="input_s3_settings"></a> [s3\_settings](#input\_s3\_settings) | (Optional) Configuration block with S3 settings. Detailed below. | `any` | `{}` | no |
| <a name="input_ssl_mode"></a> [ssl\_mode](#input\_ssl\_mode) | Optional, Default: none) The SSL mode to use for the connection. Can be one of none \| require \| verify-ca \| verify-full | `string` | `"none"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A map of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_certificate_arn"></a> [certificate\_arn](#output\_certificate\_arn) | Certificate ARN |
| <a name="output_endpoint_arn"></a> [endpoint\_arn](#output\_endpoint\_arn) | Endpoint ARN |
| <a name="output_kms_key_arn"></a> [kms\_key\_arn](#output\_kms\_key\_arn) | KMS key ARN |
| <a name="output_ssl_mode"></a> [ssl\_mode](#output\_ssl\_mode) | SSL mode |
<!-- END_TF_DOCS -->