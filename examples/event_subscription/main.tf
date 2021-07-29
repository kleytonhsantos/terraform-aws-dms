resource "random_pet" "this" {}

resource "aws_sns_topic" "this" {
  name = random_pet.this.id
}

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
  replication_subnet_group_id = module.subnet_groups.replication_subnet_group_id[0]
  availability_zone           = data.aws_availability_zone.selected.name
  vpc_security_group_ids      = data.aws_security_groups.selected.ids

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
    aws_iam_role_policy_attachment.dms-vpc-role
  ]

  tags = var.tags
}


module "event_subscription" {

  source = "../../modules/event_subscription/"

  create = true

  name             = random_pet.this.id
  sns_topic_arn    = aws_sns_topic.this.arn
  source_type      = "replication-instance"
  source_ids       = [module.replication_instances.replication_instance_id[0]]
  event_categories = ["creation", "failure"]

  depends_on = [
    module.replication_instances,
    module.subnet_groups
  ]
  tags = var.tags
}
