provider "aws" {
  region = "ap-northeast-1"
}

provider "aws" {
  alias = "us-east-1"
}

module "acm" {
  source = "../.."
  providers = {
    aws.target = aws.us-east-1
  }
  domain_name = "notespace.test"
}

output "arn" {
  value = module.acm.arn
}

output "validation_option" {
  value = module.acm.validation_option
}