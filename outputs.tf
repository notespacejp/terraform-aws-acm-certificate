output "validation_option" {
	description = "validation options"
	value = aws_acm_certificate.cert.domain_validation_options
}

output "arn" {
	description = "acm certificate arn"
	value = aws_acm_certificate.cert.arn
}