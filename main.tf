resource "cloudflare_zero_trust_tunnel_warp_connector_config" "zero_trust_tunnel_warp_connector_configs" {
  for_each = var.zero_trust_tunnel_warp_connector_configs

  account_id = each.value.account_id
  ha_mode    = each.value.ha_mode
  tunnel_id  = each.value.tunnel_id
  config     = each.value.config
}

