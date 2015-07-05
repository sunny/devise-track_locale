devise-track_locale
===================

Adds support to [Devise](http://github.com/plataformatec/devise) for
remembering a user's last locale.

Installation
-----------

Add the gem to your Gemfile:

```rb
gem "devise"
gem "devise-track_locale"
```

Usage
-----

In your model, add `:track_locale` as a devise module:

```rb
class User < ActiveRecord::Base
  devise …, :track_locale
end
```

Add a `locale` attribute to your users:

```sh
$ rails g migration AddLocaleToUsers locale
$ rake db:migrate
```

Copyright
---------

By Sunny Ripert, under the MIT License. See LICENSE for details.
