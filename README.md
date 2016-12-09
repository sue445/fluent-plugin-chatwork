# fluent-plugin-chatwork

fluentd output plugin for post to [ChatWork](http://www.chatwork.com/)

[![Gem Version](https://badge.fury.io/rb/fluent-plugin-out_chatwork.svg)](http://badge.fury.io/rb/fluent-plugin-out_chatwork)
[![Build Status](https://travis-ci.org/sue445/fluent-plugin-out_chatwork.svg)](https://travis-ci.org/sue445/fluent-plugin-out_chatwork)
[![Dependency Status](https://gemnasium.com/sue445/fluent-plugin-out_chatwork.svg)](https://gemnasium.com/sue445/fluent-plugin-out_chatwork)
[![Coverage Status](https://img.shields.io/coveralls/sue445/fluent-plugin-out_chatwork.svg)](https://coveralls.io/r/sue445/fluent-plugin-out_chatwork)
[![Code Climate](https://codeclimate.com/github/sue445/fluent-plugin-out_chatwork.png)](https://codeclimate.com/github/sue445/fluent-plugin-out_chatwork)
[![Inline docs](http://inch-ci.org/github/sue445/fluent-plugin-out_chatwork.png?branch=master)](http://inch-ci.org/github/sue445/fluent-plugin-out_chatwork)

## Installation


    $ gem install fluent-plugin-chatwork

## Configure

```
<match **>
  @type        chatwork
  api_token    YOUR_SECRET_TOKEN
  room_id      0000000000
  message      Hello ChatWork!\n<%= record["value"] %>
</match>
```

* api_token
  * secret api token
* room_id
  * send message to this room
* message
  * message content
  * support erb format
  * support newline character (\n)
  
## Contributing

1. Fork it ( https://github.com/sue445/fluent-plugin-out_chatwork/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
