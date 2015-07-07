module Devise
  module Models
    module TrackLocale
      def set_locale!
        if self.locale.to_s != I18n.locale.to_s
          self.update_column(:locale, I18n.locale.to_s)
        end
      end
    end
  end
end
