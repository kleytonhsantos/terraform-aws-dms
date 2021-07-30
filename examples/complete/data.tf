
data "aws_iam_policy_document" "dms_assume_role" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      identifiers = ["dms.amazonaws.com"]
      type        = "Service"
    }
  }
}

data "aws_vpc" "selected" {
  default = true

}

data "aws_subnet_ids" "selected" {
  vpc_id = data.aws_vpc.selected.id

}

data "aws_security_groups" "selected" {

  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.selected.id]
  }
}

data "aws_availability_zones" "selected" {
  state = "available"
}

data "aws_availability_zone" "selected" {
  name = random_shuffle.azs.result[0]
}
