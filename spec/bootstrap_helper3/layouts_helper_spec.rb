require "spec_helper"

describe "BootstrapHelper3::LayoutsHelper" do

  include ActionView::Helpers
  I18n.enforce_available_locales = false

  include BootstrapHelper3::LayoutsHelper

  describe "yield_or_default" do
    context "when a message is given" do
      subject { yield_or_default("some message") }

      it "returns the message" do
        expect(subject).to eq("some message")
      end
    end

    context "when no message is given" do
      subject { yield_or_default(nil) }

      it "returns the message" do
        expect(subject).to eq("")
      end
    end
  end

  describe "s" do
    let(:tags) {
      %w(table thead tbody tr td th ol ul li div span font img sup sub br hr a pre p h1 h2 h3 h4 h5 h6)
    }
    let(:javascript_string) { "javascript: alert('hello');" }

    it "sanitizes javascripts in href or src of tags" do
      attributes = [:href, :src]

      tags.all? do |tag|
        attributes.all? do |attribute|
          clean_tag    = content_tag(tag, "")
          poisoned_tag = content_tag(tag, "", attribute => javascript_string)

          expect(s(poisoned_tag)).to eq(clean_tag)
        end
      end
    end

    it "sanitizes javascripts in style of tags" do
      attributes = [:style]

      tags.all? do |tag|
        clean_tag    = content_tag(tag, "", :style => "")
        poisoned_tag = content_tag(tag, "", :style => javascript_string)

        expect(s(poisoned_tag)).to eq(clean_tag)
      end
    end
  end

end
