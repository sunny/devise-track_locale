require "spec_helper"

describe Devise::Models::TrackDefaultLocale do
  class MockModel
    include Devise::Models::TrackDefaultLocale
  end

  describe "#set_default_locale!" do
    let(:model) { MockModel.new }
    before do
      allow(model).to receive(:update_column)
      allow(model).to receive(:locale) { locale }
    end

    context "with no locale" do
      let(:locale) { nil }

      it "saves the new locale on the model" do
        I18n.with_locale(:fr) do
          model.set_default_locale!
        end

        expect(model).to have_received(:update_column).with(:locale, "fr")
      end
    end

    context "with a locale already set" do
      let(:locale) { "en" }

      it "does not change the model" do
        I18n.with_locale(:fr) do
          model.set_default_locale!
        end

        expect(model).not_to have_received(:update_column)
      end
    end
  end
end
