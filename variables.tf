# Input variable definitions

variable "region" {
  default = "eu-central-1"
}

variable "name" {
  description = "Name of VPC"
  type        = string
  default     = "EPAM-hw-VPC"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = list(string)
  default     = ["172.16.0.0/20", "172.17.0.0/20"]
}

variable "azs" {
  description = "Availability zones for VPC"
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1c"]
}

variable "vpc_private_subnets" {
  description = "Private subnets for VPC"
  type        = list(string)
  default     = ["172.16.0.0/24", "172.17.2.0/24"]
}

variable "vpc_public_subnets" {
  description = "Public subnets for VPC"
  type        = list(string)
  default     = ["172.16.1.0/24", "172.17.1.0/24"]
}

variable "vpc_tags" {
  description = "Tags to apply to resources created by VPC module"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}
