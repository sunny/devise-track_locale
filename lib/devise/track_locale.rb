require 'devise'

Devise.add_module :track_locale, model: true
Devise.add_module :track_default_locale, model: true

Warden::Manager.after_set_user do |record, *|
  record.set_locale! if record.respond_to?(:set_locale!)
end

Warden::Manager.after_set_user do |record, *|
  record.set_default_locale! if record.respond_to?(:set_default_locale!)
end
