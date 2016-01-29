God.watch do |w|
  w.name  = "ping_and_packet_loss_to_mackerel"
  w.start = "ruby /Users/yako/misc/ping_and_packet_loss_to_mackerel/ping_and_packet_loss_to_mackerel.rb WJffMSpT6KM0uEBCjjBqOfPcCM8G73umf6OU0pvJyuw= 2BhxirjUPYm 60"
  w.log = "/Users/yako/misc/ping_and_packet_loss_to_mackerel/ping_and_packet_loss_to_mackerel.log"
  w.keepalive
end
