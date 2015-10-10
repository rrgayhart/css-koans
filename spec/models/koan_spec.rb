require 'spec_helper'

describe Koan do

  context "#validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :codepen_slug }
    it { should validate_presence_of :codepen_username }
    it { should have_one :solution }
  end

  describe '#codepen_permalink' do
    let(:koan){ build(:koan, codepen_slug: 'slugz') }

    it 'correctly formats link' do
      expected_link = "http://codepen.io/rrgayhart/pen/slugz/"
      expect(koan.codepen_permalink).to eq(expected_link)
    end
  end

  describe '#github_permalink' do
    let(:koan){ build(:koan, github_slug: 'slugz') }

    it 'correctly formats link' do
      expected_link = "https://github.com/css-koans/slugz"
      expect(koan.github_permalink).to eq(expected_link)
    end
  end
end
