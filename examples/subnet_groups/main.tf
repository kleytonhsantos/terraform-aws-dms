resource "random_pet" "this" {}

resource "random_shuffle" "azs" {
  input        = data.aws_availability_zones.selected.names
  result_count = 1
}

provider "aws" {
  region = "us-east-1"
}

module "subnet_groups" {

  source = "../../modules/subnet_groups/"

  create = true

  replication_subnet_group_description = random_pet.this.id
  replication_subnet_group_id          = random_pet.this.id

  subnet_ids = data.aws_subnet_ids.selected.ids

  tags = var.tags

  depends_on = [
    aws_iam_role_policy_attachment.dms_vpc_role
  ]
}
