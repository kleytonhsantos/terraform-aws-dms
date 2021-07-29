resource "aws_iam_role" "dms_vpc_role" {
  assume_role_policy = data.aws_iam_policy_document.dms_assume_role.json
  name               = "dms-vpc-role"

  tags = var.tags
}

resource "aws_iam_role_policy_attachment" "dms_vpc_role" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonDMSVPCManagementRole"
  role       = aws_iam_role.dms_vpc_role.name

  provisioner "local-exec" {
    command = "sleep 30"
  }
}
