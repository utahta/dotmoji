# Dotmoji

Get the dot data from the character.

Using [misaki font](http://www.geocities.jp/littlimi/misaki.htm)

## Installation

Add this line to your application's Gemfile:

    gem 'dotmoji'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dotmoji

## Usage

```ruby
require 'dotmoji'
data = Dotmoji.map_data('テスト')
```

```bash
$ dotmoji display -t テスト
```
![dotmoji display](https://cloud.githubusercontent.com/assets/97572/6714926/629fa0fc-cdde-11e4-85a6-7484cf6f728c.gif)

## Contributing

1. Fork it ( https://github.com/utahta/dotmoji/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
