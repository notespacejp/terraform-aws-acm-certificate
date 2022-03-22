# terraform-aws-acm-certificate

This module is easy create AWS ACM.

## 📗 Document Update
```shell
terraform-docs markdown --output-file README.md .
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.75.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.75.0 |
| <a name="provider_aws.target"></a> [aws.target](#provider\_aws.target) | >= 3.75.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.cert](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_route53_record.cert](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_add_domain_name_list"></a> [add\_domain\_name\_list](#input\_add\_domain\_name\_list) | additional domain name | `list(string)` | `[]` | no |
| <a name="input_add_verification_records"></a> [add\_verification\_records](#input\_add\_verification\_records) | add verification records for route53 | `bool` | `false` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | create domain name | `string` | n/a | yes |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | route53 zone id | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | acm certificate arn |
| <a name="output_validation_option"></a> [validation\_option](#output\_validation\_option) | validation options |
<!-- END_TF_DOCS -->