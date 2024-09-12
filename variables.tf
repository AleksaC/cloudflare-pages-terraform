variable "name" {
  type        = string
  description = "Name of the project"
}

variable "domain_name" {
  type     = string
  nullable = false
}

variable "account_id" {
  type     = string
  nullable = false
  default  = ""
}

variable "cloudflare_zone_id" {
  type     = string
  nullable = false
  default  = ""
}

variable "production_branch" {
  type     = string
  nullable = false
  default  = "main"
}
