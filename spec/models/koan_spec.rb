require 'spec_helper'

describe Koan do
  context "#validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :codepen_slug }
    it { should validate_presence_of :codepen_username }
    it { should have_one :solution }
  end
end
