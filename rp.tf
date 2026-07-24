resource "aws_connect_routing_profile" "rp_one" {
  instance_id               = var.instance_id
  name                      = "rp_one"
  default_outbound_queue_id = var.default_outbound_queue_id
  description               = "rp example description"

  media_concurrencies {
    channel     = "VOICE"
    concurrency = 1
    cross_channel_behavior {
      behavior_type = "ROUTE_ANY_CHANNEL"
    }
  }

  queue_configs{
    channel  = "VOICE"
    delay    = 2
    priority = 1
    queue_id = var.default_outbound_queue_id
  }

  tags = {
    "Name" = "Example Routing Profile",
  }
}