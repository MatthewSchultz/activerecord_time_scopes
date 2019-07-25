# Activerecord Time Scopes
Short description and motivation.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'activerecord_time_scopes'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install activerecord_time_scopes
```

## Usage
This plugin enables the following methods:

[created | updated] _ [before | after | between | today | yesterday | this_week | last_week | this_month | last_month | this_year | last_year]

You can pass either datetime objects or ActiveRecord objects - if you pass an activerecord object, the relevant method (created/updated_at) will be used to search.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
