# Precious

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/precious`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'precious'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install precious

## Usage

Making sure you first require the gem in your code or console

```
require 'precious'
```

An Example of fetching books without an API key

```
books = Precious::API::V2::Books.new

books.get_books
```

An Example of fetching movies with an API key
```
movies = Precious::API::V2::Movies.new(API_KEY)

movies.get_movies
```

An Example of fetching character quotes with an API key
```
characters = Precious::API::V2::Characters.new(API_KEY)

characters.get_character_quotes(id: '5cdbe73516d496d2c2940848')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/precious.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
