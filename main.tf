# If account id is not provided as a variable, get it from the data source, but 
# only if there is one account. Not sure what determines the accounts that get
# returned by this data source, maybe it's all the accounts where the account that
# the api token belongs to is a member with sufficiently high privileges.
# Either way, this would break if new account is added, however this isn't that 
# big of an issue since the account id that was previously used can be set as variable
data "cloudflare_accounts" "current" {
  count = var.account_id == "" ? 1 : 0
}

locals {
  account_id = var.account_id == "" ? one(data.cloudflare_accounts.current[0].accounts).id : var.account_id
}

resource "cloudflare_pages_project" "this" {
  account_id        = local.account_id
  name              = var.name
  production_branch = var.production_branch
}

resource "cloudflare_zone" "this" {
  account_id = local.account_id
  zone       = var.domain_name
  jump_start = false
  plan       = "free"
}

resource "cloudflare_pages_domain" "this" {
  account_id   = local.account_id
  project_name = cloudflare_pages_project.this.name
  domain       = cloudflare_zone.this.zone
}

resource "cloudflare_record" "this" {
  zone_id = cloudflare_zone.this.id
  name    = cloudflare_pages_domain.this.domain
  content = cloudflare_pages_project.this.subdomain
  proxied = true
  type    = "CNAME"
}
