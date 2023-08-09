# terraform-aws-acm-certificate

This module is easy create AWS ACM.

## 📗 Document Update
```shell
terraform-docs markdown --output-file README.md .
```

## Test
```shell
cd test
go test -v -run <test function name>
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.29.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.29.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_route53_record.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_domain"></a> [additional\_domain](#input\_additional\_domain) | Use to include additional domains | `list(string)` | `[]` | no |
| <a name="input_domain"></a> [domain](#input\_domain) | Domain for which the certificate is issued | `string` | n/a | yes |
| <a name="input_validation_method"></a> [validation\_method](#input\_validation\_method) | Domain validation method. DNS or EMAIL | `string` | `"DNS"` | no |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | If zone\_id is specified, a validation record is created in the specified host zone. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |
| <a name="output_validation_record"></a> [validation\_record](#output\_validation\_record) | n/a |
<!-- END_TF_DOCS -->