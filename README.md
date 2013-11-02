# Handlebars.rb

Ruby Handlebars is a bridge to the JS Handlebars compiler.

## Installation

Add this line to your application's Gemfile:

    gem 'handlebars.rb'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install handlebars.rb

## Usage

```ruby
[1] pry(main)> require'handlebars'
=> true
[2] pry(main)> Handlebars.version
=> "1.0.0"
[3] pry(main)> Handlebars.precompile("<p>Hello World</p>")
=> "function (Handlebars,depth0,helpers,partials,data) {\n  this.compilerInfo = [4,'>= 1.0.0'];\nhelpers = this.merge(helpers, Handlebars.helpers); data = data || {};\n  \n\n\n  return \"<p>Hello World</p>\";\n  }"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
