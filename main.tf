terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = ">= 4.29.0"
        }
    }
}

resource "aws_acm_certificate" "this" {
    domain_name = var.domain
    subject_alternative_names = var.additional_domain
    validation_method = "DNS"

    lifecycle {
        create_before_destroy = true
    }
}

resource "aws_route53_record" "this" {
    count = var.zone_id != null ? 1 : 0
    zone_id = var.zone_id
    name = tolist(aws_acm_certificate.this.domain_validation_options)[0].resource_record_name
    type = tolist(aws_acm_certificate.this.domain_validation_options)[0].resource_record_type
    ttl = 60
    records = [tolist(aws_acm_certificate.this.domain_validation_options)[0].resource_record_value]
}
