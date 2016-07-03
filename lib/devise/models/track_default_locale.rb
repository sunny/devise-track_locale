module Devise
  module Models
    module TrackDefaultLocale
      def set_default_locale!
        update_column(:locale, I18n.locale.to_s) if locale.blank?
      end
    end
  end
end
