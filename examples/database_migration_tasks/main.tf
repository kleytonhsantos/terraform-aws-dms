resource "time_static" "this" {}

resource "random_pet" "this" {}

resource "random_shuffle" "azs" {
  input        = data.aws_availability_zones.selected.names
  result_count = 1
}

provider "aws" {
  region = "us-east-1"
}

module "source_endpoint" {
  source = "../../modules/endpoints/"

  create = true

  endpoint_id                 = random_pet.this.id
  engine_name                 = "mysql"
  server_name                 = random_pet.this.id
  port                        = 3306
  username                    = random_pet.this.id
  password                    = random_pet.this.id
  database_name               = "test_${random_pet.this.id}"
  extra_connection_attributes = file("./config/extra_connection_attributes.json")

  tags = var.tags
}

module "target_endpoint" {
  source = "../../modules/endpoints/"

  create = true

  endpoint_id   = random_pet.this.id
  engine_name   = "s3"
  endpoint_type = "target"


  s3_settings = [{
    bucket_name             = random_pet.this.id
    compression_type        = "GZIP"
    service_access_role_arn = aws_iam_role.dms-vpc-role.arn
  }]

  depends_on = [
    aws_iam_role.dms-vpc-role,
    module.subnet_groups
  ]

  tags = var.tags
}

module "replication_instances" {

  source = "../../modules/replication_instances/"

  create = true

  replication_instance_id     = random_pet.this.id
  vpc_security_group_ids      = data.aws_security_groups.selected.ids
  replication_subnet_group_id = random_pet.this.id
  availability_zone           = data.aws_availability_zone.selected.name

  tags = var.tags

  depends_on = [
    module.subnet_groups
  ]
}

module "subnet_groups" {

  source = "../../modules/subnet_groups/"

  create = true

  replication_subnet_group_description = random_pet.this.id
  replication_subnet_group_id          = random_pet.this.id

  subnet_ids = data.aws_subnet_ids.selected.ids

  tags = var.tags

  depends_on = [
    aws_iam_role_policy_attachment.dms-vpc-role-AmazonDMSVPCManagementRole
  ]
}

module "migration_tasks" {

  source = "../../modules/database_migration_tasks/"

  create = true

  cdc_start_time            = time_static.this.unix
  migration_type            = "full-load-and-cdc"
  replication_task_id       = random_pet.this.id
  replication_instance_arn  = module.replication_instances.replication_instance_arn[0]
  source_endpoint_arn       = module.source_endpoint.endpoint_arn[0]
  target_endpoint_arn       = module.target_endpoint.endpoint_arn[0]
  table_mappings            = file("./config/table_mappings.json")
  replication_task_settings = file("./config/replication_task_settings.json")

  tags = var.tags
}
