variable "domain" {
    type = string
    description = "Domain for which the certificate is issued"
}

variable "additional_domain" {
    type = list(string)
    description = "Use to include additional domains"
    default = []
}

variable "validation_method" {
    type = string
    description = "Domain validation method. DNS or EMAIL"
    default = "DNS"
}

variable "zone_id" {
    type = string
    description = "If zone_id is specified, a validation record is created in the specified host zone."
    default = null
}
