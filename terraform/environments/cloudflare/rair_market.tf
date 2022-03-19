locals {
  rair_market_ttl = 3600
}

resource "cloudflare_record" "rair_market__coinagenda" {
  zone_id = cloudflare_zone.rair_market.id
  name    = "Coinagenda"
  value   = "95.217.235.127"
  type    = local.record_type.A
  ttl     = local.rair_market_ttl
}

resource "cloudflare_record" "rair_market__demo" {
  zone_id = cloudflare_zone.rair_market.id
  name    = "Demo"
  value   = "34.120.49.144"
  type    = local.record_type.A
  ttl     = local.rair_market_ttl
}

resource "cloudflare_record" "rair_market__iverse" {
  zone_id = cloudflare_zone.rair_market.id
  name    = "Iverse"
  value   = "34.111.142.112"
  type    = local.record_type.A
  ttl     = local.rair_market_ttl
}

resource "cloudflare_record" "rair_market__nipsey" {
  zone_id = cloudflare_zone.rair_market.id
  name    = "Nipsey"
  value   = "34.95.69.25"
  type    = local.record_type.A
  ttl     = local.rair_market_ttl
}

# TODO: clarify this one
# not sure about this format
# @v=spf1 include:transmail.net ~all
resource "cloudflare_record" "rair_market_txt_1" {
  zone_id = cloudflare_zone.rair_market.id
  name    = "@v=spf1"
  value   = "include:transmail.net"
  type    = local.record_type.TXT
  ttl     = local.rair_market_ttl
}



