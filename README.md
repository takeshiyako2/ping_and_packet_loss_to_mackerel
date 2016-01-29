# Install gem

```
$ bundle install
```

# Set god config file

```
$ emacs ping_and_packet_loss_to_mackerel.god
God.watch do |w|
  w.name  = "ping_and_packet_loss_to_mackerel"
  w.start = "ruby [/full/path/to/]ping_and_packet_loss_to_mackerel.rb [your api_key] [hostId] [term]"
  w.log = "[/full/path/to/]ping_and_packet_loss_to_mackerel.log"
  w.keepalive
end
```

example)
```
God.watch do |w|
  w.name  = "ping_and_packet_loss_to_mackerel"
  w.start = "ruby /Users/yako/misc/ping_and_packet_loss_to_mackerel.rb xxx xxx 60"
  w.log = "/Users/yako/misc/ping_and_packet_loss_to_mackerel.log"
  w.keepalive
end
```

# Start deamon

```
$ god -c ping_and_packet_loss_to_mackerel.god
```

# Check process

```
$ ps ax | grep ping_and_packet_loss_to_mackerel
```

# Check log

```
$ tail -f ping_and_packet_loss_to_mackerel.log
```

# Stop deamon

```
$ god stop ping_and_packet_loss_to_mackerel
$ god terminate
```


# See also

http://godrb.com/

# TODO

test

