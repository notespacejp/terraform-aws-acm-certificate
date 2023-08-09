provider "aws" {
  region = "ap-northeast-1"
}

module "acm" {
  source = "../.."
  domain = "notespace.test"
  additional_domain = [
    "*.notespace.test"
  ]
}
