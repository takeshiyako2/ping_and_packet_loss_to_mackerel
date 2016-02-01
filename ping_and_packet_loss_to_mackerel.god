God.watch do |w|
  w.name  = "ping_and_packet_loss_to_mackerel"
  w.start = "ruby [/full/path/to/]ping_and_packet_loss_to_mackerel.rb [your api_key] [hostId] [term]"
  w.log = "[/full/path/to/]ping_and_packet_loss_to_mackerel.log"
  w.keepalive
end
