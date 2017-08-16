# fluent-plugin-chatwork

fluentd output plugin for post to [ChatWork](http://www.chatwork.com/)

[![Gem Version](https://badge.fury.io/rb/fluent-plugin-chatwork.svg)](http://badge.fury.io/rb/fluent-plugin-chatwork)
[![Build Status](https://travis-ci.org/sue445/fluent-plugin-chatwork.svg?branch=master)](https://travis-ci.org/sue445/fluent-plugin-chatwork)
[![Dependency Status](https://gemnasium.com/sue445/fluent-plugin-chatwork.svg)](https://gemnasium.com/sue445/fluent-plugin-chatwork)
[![Coverage Status](https://coveralls.io/repos/github/sue445/fluent-plugin-chatwork/badge.svg?branch=master)](https://coveralls.io/github/sue445/fluent-plugin-chatwork?branch=master)
[![Code Climate](https://codeclimate.com/github/sue445/fluent-plugin-chatwork.png)](https://codeclimate.com/github/sue445/fluent-plugin-chatwork)
[![Inline docs](http://inch-ci.org/github/sue445/fluent-plugin-chatwork.svg?branch=master)](http://inch-ci.org/github/sue445/fluent-plugin-chatwork)

## Requirements

| fluent-plugin-chatwork | fluentd | ruby |
|------------------------|---------|------|
| >= 2.0.0 | >= v0.14.0 | >= 2.1 |
|  < 2.0.0 | >= v0.12.0 | >= 1.9 |

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

1. Fork it ( https://github.com/sue445/fluent-plugin-chatwork/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
