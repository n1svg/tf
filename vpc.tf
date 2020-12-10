module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name                 = var.name
  cidr                 = var.vpc_cidr[0, 2]
  azs                  = var.azs
  enable_dns_hostnames = true

  tags = var.vpc_tags
}