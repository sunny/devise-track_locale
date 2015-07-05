require "spec_helper"

describe Devise::Models::TrackLocale do
  class MockModel
    include Devise::Models::TrackLocale
  end

  describe "#set_locale!" do
    let(:model) { MockModel.new }
    before do
      allow(model).to receive(:update_attribute)
      allow(model).to receive(:locale) { "en" }
    end

    it "saves the new locale on the model" do
      I18n.with_locale(:fr) do
        model.set_locale!
      end

      expect(model).to have_received(:update_attribute).with(:locale, "fr")
    end

    it "does not change the model if the locale is the same" do
      I18n.with_locale(:en) do
        model.set_locale!
      end

      expect(model).not_to have_received(:update_attribute)
    end
  end
end
