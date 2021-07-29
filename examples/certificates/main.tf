resource "random_pet" "this" {}

provider "aws" {
  region = "us-east-1"
}

module "certificates" {
  source = "../../modules/certificates/"

  create = true

  certificate_id  = random_pet.this.id
  certificate_pem = file("./certs/certificate.pem")

  tags = var.tags
}
