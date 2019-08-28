require 'rails_helper'

RSpec.describe Bucket, type: :model do
  describe "#image" do
    let(:image_file) { Rack::Test::UploadedFile.new(Rails.root.join("spec/fixtures/logo.gif"), "image/gif") }

    subject { Bucket.new(image: image_file) }

    it 'allows the user to delete' do
      expect(subject.image.purge).not_to raise(FrozenError)
    end
  end
end
