resource "random_pet" "this" {}

resource "random_shuffle" "azs" {
  input        = data.aws_availability_zones.selected.names
  result_count = 1
}

provider "aws" {
  region = "us-east-1"
}

module "replication_instances" {

  source = "../../modules/replication_instances/"

  create = true

  replication_instance_id     = random_pet.this.id
  vpc_security_group_ids      = data.aws_security_groups.selected.ids
  replication_subnet_group_id = module.subnet_groups.replication_subnet_group_id[0]
  availability_zone           = data.aws_availability_zone.selected.name

  depends_on = [
    module.subnet_groups
  ]

  tags = var.tags
}

module "subnet_groups" {

  source = "../../modules/subnet_groups/"

  create = true

  replication_subnet_group_description = random_pet.this.id
  replication_subnet_group_id          = random_pet.this.id

  subnet_ids = data.aws_subnet_ids.selected.ids

  depends_on = [
    aws_iam_role_policy_attachment.dms_vpc_role
  ]

  tags = var.tags

}
