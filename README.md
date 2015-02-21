# Foreman::Upstart::Su

Use su instead of setuid in upstart.

This gem brings back the original foreman upstart template that was removed in [this commit](https://github.com/ddollar/foreman/commit/c039f379ff1b6eb87673aa73a3548ba20d1722e4). Older versions of upstart (< 1.4) do not support `setuid` which is used in the newer foreman upstart template.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'foreman-upstart-su', :github => "dwilkie/foreman-upstart-su", :require => false
```

And then execute:

    $ bundle

## Usage

It can be used together with [capistrano-foreman](https://github.com/hyperoslo/capistrano-foreman) like this:

```ruby
# deploy.rb
set(
  :foreman_options,
  {
    :template => "`RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec bundle show foreman-upstart-su`/data/export/upstartsu"
  }
)
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/foreman-upstart-su/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
