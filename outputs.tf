output "arn" {
    value = aws_acm_certificate.this.arn
}

output "validation_record" {
    value = {
        name = tolist(aws_acm_certificate.this.domain_validation_options)[0].resource_record_name
        type = tolist(aws_acm_certificate.this.domain_validation_options)[0].resource_record_type
        records = [tolist(aws_acm_certificate.this.domain_validation_options)[0].resource_record_value]
    }
}