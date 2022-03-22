terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
			version = ">= 3.75.0"
			# The way to write provider alias has changed since v0.15.
			# https://www.terraform.io/docs/language/modules/develop/providers.html#provider-aliases-within-modules
			configuration_aliases = [ aws.target ]
		}
	}
	required_version = ">= 1"
}

resource "aws_acm_certificate" "cert" {
	provider = aws.target
	domain_name = var.domain_name
	subject_alternative_names = var.add_domain_name_list
	validation_method = "DNS"

	lifecycle {
		create_before_destroy = true
	}
}

# add verification recodes
resource "aws_route53_record" "cert" {
	count = var.add_verification_records ? 1 : 0
	zone_id = var.zone_id
	name = tolist(aws_acm_certificate.cert.domain_validation_options)[0].resource_record_name
	type = tolist(aws_acm_certificate.cert.domain_validation_options)[0].resource_record_type
	ttl = "300"
	records = [tolist(aws_acm_certificate.cert.domain_validation_options)[0].resource_record_value]
}
