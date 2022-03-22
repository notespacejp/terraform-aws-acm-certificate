variable "zone_id" {
	type = string
	description = "route53 zone id"
	default = null
}

variable "domain_name" {
	type = string
	description = "create domain name"
}

variable "add_domain_name_list" {
	type = list(string)
	description = "additional domain name"
	default = []
}

variable "add_verification_records" {
	type = bool
	description = "add verification records for route53"
	default = false
}
