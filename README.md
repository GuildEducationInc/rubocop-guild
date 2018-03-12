# RuboCop Guild

Guild Education shared RuboCop config

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubocop-guild'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rubocop-guild

## Usage

### Rake Task

This gem exposes a Rake task that will perform the installation for you:

```bash
rake guild:rubocop:install
```

### Manually

Add this to the top of your `.rubocop.yml`:

```yaml
inherit_gem:
  rubocop-guild:
    - config/guild.yml
```

If you want to override the settings, do that below these lines.

## Development

Clone the repo and make the associated changes to the [`config/guild.yml`](https://github.com/GuildEducationInc/rubocop-guild/tree/master/config/guild.yml) file.

In addition, please follow these guildlines:

1. Associated cop definitions should be grouped
2. Cops should be in alphabetical order within their groups. This makes it easier to look up the cop in the RuboCop documentation

## Publishing

Make sure you've been granted publish access to the [rubygem](https://rubygems.org/gems/rubocop-guild)

1. Increment the gem version in `version.rb`
2. Run `bin/rake release`. This will create a new tag based on the version, push the tag to Github, and then push the gem to Rubygems