module Devise
  module Models
    module TrackLocale
      def set_locale!
        if locale.to_s != I18n.locale.to_s
          update_column(:locale, I18n.locale.to_s)
        end
      end
    end
  end
end
