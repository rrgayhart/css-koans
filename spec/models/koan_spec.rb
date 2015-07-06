require 'spec_helper'

describe Koan do
  context "#validations" do
    it { should validate_presence_of :name }
    it { should have_one :solution }
    it { should have_one :problem }
  end
end
