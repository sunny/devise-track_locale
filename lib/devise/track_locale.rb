require 'devise'

Devise.add_module :track_locale, model: true

Warden::Manager.after_set_user do |record, *|
  record.set_locale! if record.respond_to?(:set_locale!)
end
