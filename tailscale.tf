terraform {
}

data "onepassword_item" "tailscale_apikey" {
  vault = local.perchnet_vault
  uuid  = "cvh7gepgwlnb7yxtkxsvlsokti"
}

provider "tailscale" {
  oauth_client_id     = data.onepassword_item.tailscale_apikey.username
  oauth_client_secret = data.onepassword_item.tailscale_apikey.credential
  scopes              = ["all"]
}

locals {
}

resource "tailscale_tailnet_key" "tailscale_key" {
  reusable      = true
  ephemeral     = false               # Keep node when offline
  preauthorized = true                # Auto-authorize
  expiry        = 600                 #local.rotation_seconds
  tags          = ["tag:web-ingress"] #local.tailscale_tags
  #  lifecycle {
  #    replace_triggered_by = [time_rotating.rotate_tailnet_key]
  #  }
}
