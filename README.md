# OmniAuth Vipps

[![Gem Version](http://img.shields.io/gem/v/omniauth-vipps.svg)][gem]
[![Code Climate](http://img.shields.io/codeclimate/maintainability/maxig/omniauth-vipps.svg)][codeclimate]
[![Coverage Status](http://img.shields.io/coveralls/maxig/omniauth-vipps.svg)][coveralls]
[![Security](https://hakiri.io/github/omniauth/omniauth-vipps/master.svg)](https://hakiri.io/github/omniauth/omniauth-vipps/master)

[gem]: https://rubygems.org/gems/omniauth-vipps
[codeclimate]: https://codeclimate.com/github/maxig/omniauth-vipps
[coveralls]: https://coveralls.io/r/maxig/omniauth-vipps

This gem contains a Oauth2 strategy for VIPPS. It is meant to serve
the login functionality to allow a secure authentication. To
use it, you'll need to sign up for an OAuth2 Client ID and Client Secret
on the [Vipps Development portal](https://portal.vipps.no).

## Installation

```ruby
gem 'omniauth-vipps', '~> 1.0.0'
```

## Basic Usage

```ruby
use OmniAuth::Builder do
  provider :vipps, ENV['VIPPS_CLEINT_ID'], ENV['VIPPS_CLIENT_SECRET']
end
```

## Basic Usage - Rails

In `config/initializers/vipps.rb`

```ruby
  Rails.application.config.middleware.use OmniAuth::Builder do
    provider :vipps, ENV['VIPPS_CLEINT_ID'], ENV['VIPPS_CLIENT_SECRET']
  end
```

## Basic Usage - Devise

NOTE: When using Devise, ignore Basic Usage altogether. Otherwise, you might run into problems of defining a strategy several times.
In `config/initializers/devise.rb`

```ruby
  Devise.setup do |config|
    ...
    config.omniauth :vipps, ENV['VIPPS_CLEINT_ID'], ENV['VIPPS_CLIENT_SECRET']
    ...
  end
```

## Scopes

Vipps Login API lets you set scopes to provide granular access to different types of data:

```ruby
use OmniAuth::Builder do
  provider :vipps, ENV['VIPPS_CLEINT_ID'], ENV['VIPPS_CLIENT_SECRET'], scope: "openid email"
end
```

More info on [Scopes](https://developer.vippsmobilepay.com/docs/APIs/login-api/api-guide/core-concepts/#scopes).


## Semver
This project adheres to Semantic Versioning 2.0.0. Any violations of this scheme are considered to be bugs.
All changes will be tracked [here](https://github.com/omniauth/omniauth-github/releases).

## License

Copyright (c) 2011 Max Gordienok and Goscore AS.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.