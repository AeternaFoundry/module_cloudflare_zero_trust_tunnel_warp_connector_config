variable "zero_trust_tunnel_warp_connector_configs" {
  description = <<EOT
Map of zero_trust_tunnel_warp_connector_configs, attributes below
Required:
    - account_id
    - ha_mode
    - tunnel_id
Optional:
    - config
EOT

  type = map(object({
    account_id = string
    ha_mode    = string
    tunnel_id  = string
    config = optional(object({
      fnr_id = optional(string)
      vips = optional(list(object({
        address = string
      })))
      vips_previous = optional(list(object({
        address = string
      })))
    }))
  }))
}

