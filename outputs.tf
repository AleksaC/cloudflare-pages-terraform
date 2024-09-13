output "zone_id" {
  value = cloudflare_zone.this.id
}

output "name_servers" {
  value       = cloudflare_zone.this.name_servers
  description = "Cloudflare-assigned name servers. You need to update your nameservers at your registrar to point to these nameservers to complete the setup."
}
