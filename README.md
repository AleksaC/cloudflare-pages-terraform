# cloudflare-pages-terraform

## About

This is a terraform module that allows an easy setup of CloudFlare Pages project with a custom domain.

## Getting Started

```terraform
module "example" {
    source = "github.com/AleksaC/cloudflare-pages-terraform?ref=v0.1.0"

    name = "example"
    domain_name = "example.com"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.4 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | >= 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 4.41.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_pages_domain.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/pages_domain) | resource |
| [cloudflare_pages_project.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/pages_project) | resource |
| [cloudflare_record.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [cloudflare_zone.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/zone) | resource |
| [cloudflare_zone_settings_override.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/zone_settings_override) | resource |
| [cloudflare_accounts.current](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/data-sources/accounts) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | CloudFlare account id. If not provided this module will try to extract it from `cloudflare_accounts` data source if it returns only one value, otherwise an error will be thrown | `string` | `""` | no |
| <a name="input_cloudflare_api_token"></a> [cloudflare\_api\_token](#input\_cloudflare\_api\_token) | n/a | `any` | n/a | yes |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Custom domain | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the project | `string` | n/a | yes |
| <a name="input_override_zone_settings"></a> [override\_zone\_settings](#input\_override\_zone\_settings) | Whether to make some opinionated changes to CloudFlare zone settings or keep the defaults | `bool` | `true` | no |
| <a name="input_production_branch"></a> [production\_branch](#input\_production\_branch) | The name of the branch that is used for the production environment | `string` | `"main"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_zone_id"></a> [zone\_id](#output\_zone\_id) | n/a |
<!-- END_TF_DOCS -->

## Contact
- [Personal website](https://aleksac.me)
- <a target="_blank" href="http://twitter.com/aleksa_c_"><img alt='Twitter followers' src="https://img.shields.io/twitter/follow/aleksa_c_.svg?style=social"></a>
- hello@aleksac.me
