variable "name" {
  type        = string
  description = "Name of the project"
}

variable "domain_name" {
  type        = string
  nullable    = false
  description = "Custom domain"
}

variable "account_id" {
  type        = string
  nullable    = false
  default     = ""
  description = "CloudFlare account id. If not provided this module will try to extract it from `cloudflare_accounts` data source if it returns only one value, otherwise an error will be thrown"
}

variable "override_zone_settings" {
  type        = bool
  nullable    = false
  default     = true
  description = "Whether to make some opinionated changes to CloudFlare zone settings or keep the defaults"
}

variable "production_branch" {
  type        = string
  nullable    = false
  default     = "main"
  description = "The name of the branch that is used for the production environment"
}
