# AWS Database Migration Service (DMS) Terraform module

## Features

AWS Database Migration Service (AWS DMS) is a cloud service that makes it easy to migrate relational databases, data warehouses, NoSQL databases, and other types of data stores. You can use AWS DMS to migrate your data into the AWS Cloud or between combinations of cloud and on-premises setups.

## Usage

<details>
  <summary>Certificates:</summary>

```hcl
module "certificates" {
  source = "../../modules/certificates/"

  create = true

  certificate_id  = "name"
  certificate_pem = file("path_pem_file")

  tags = var.tags
}
```
</details>

## Examples

- [certificates](https://github.com/kleytonhsantos/terraform-aws-dms/tree/main/examples/certificates) - Module built to import certificates to Amazon Web Service DMS.

## Authors

Module is maintained by [Kleyton Santos](https://github.com/kleytonhsantos) with help from [these awesome contributors](https://github.com/kleytonhsantos/terraform-aws-dms/graphs/contributors).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/kleytonhsantos/terraform-aws-dms/LICENSE) for full details.
