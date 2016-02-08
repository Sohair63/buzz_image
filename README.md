# BuzzImage
Point the arrow or cursor to the image and make it buzz, customize the Buzz Screen as per your need.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'buzz_image'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install buzz_image

## Usage

Append the following script to the `application.js` of your rails app

    $ //= require buzz_main

## Usage

Use the following **Helper Method** in your **Views**

```
  <%= buzz_image_tag('path to image file') %>
```

e.g

```
  <%= buzz_image_tag('rails.png') %>
```

We have configured with the default value of

```ruby
def initialize
  width = 90
  height = 90
  buzz_level = 1.5 # Zoom Level
end
```

You can **Modify the Default Values in Rails Application**

In the Rails app, create `config/initializer/buzz_image.rb`

Add the following contect in the file:

```ruby
Rails.application.config.buzz_image.set_options do |options|
  # Assign the values as per your need
  options.width = 200
  options.height = 200
  options.buzz_level = 5
end

```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/buzz_image. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

