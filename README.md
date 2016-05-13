# sc2vc: ssh_config to vuls config TOML format

ssh_config to [vuls](https://github.com/future-architect/vuls) config TOML format

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ssh_config_to_vuls_config'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install ssh_config_to_vuls_config
```

## Usage

Convert ssh_config to [vuls](https://github.com/future-architect/vuls) config TOML format.

```sh
$ cat ~/.ssh/config | sc2vc > vuls_config.toml
```

Use [sconb](https://github.com/k1LoW/sconb) to filter ~/.ssh/config.

```sh
$ sconb dump example_* | sconb restore | sc2vc > filtered_config.toml
```


## Contributing

1. Fork it ( https://github.com/[my-github-username]/ssh_config_to_vuls_config/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
