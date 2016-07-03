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

Add a `locale` attribute to your users:

```sh
$ rails g migration AddLocaleToUsers locale
$ rake db:migrate
```

### Save the locale on every sign-in

In your model, add `:track_locale` as a devise module:

```rb
class User < ActiveRecord::Base
  devise …, :track_locale
end
```

### Save the locale only once

In your model, add `:track_default_locale` as a devise module:

```rb
class User < ActiveRecord::Base
  devise …, :track_default_locale
end
```

Copyright
---------

By Sunny Ripert, under the MIT License. See LICENSE for details.
