#!/usr/bin/ruby
# coding: utf-8
require 'mackerel'
require 'logger'

@mackerel_api_key, @hostId, @term, = ARGV
@term = @term.to_i
@ping_server = "8.8.8.8"
@log = Logger.new(STDOUT)

# get packet_loss from ping
def get_ping_packet_loss
  ping_res = `ping -c #{@term} -q #{@ping_server}`
  packet_loss = ping_res.scan(/(\S+)% packet loss/)[0][0].to_i
end

# post payload to mackerel
def post_payload_to_mackerel(payload)
  mackerel = Mackerel::Client.new(:mackerel_api_key => @mackerel_api_key)
  mackerel.post_metrics([payload])
end

# run daemon
loop do
  payload = {"hostId"=>@hostId, "value"=>get_ping_packet_loss, "time"=>Time.now.to_i, "name"=>"custom.service.ping_packet_loss"}
  begin
    res = post_payload_to_mackerel(payload)
    @log.info("payload:#{payload}, res:#{res}")
  rescue => err
    @log.warn(err)
  end
  sleep @term
end
