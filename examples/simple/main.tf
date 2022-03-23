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
