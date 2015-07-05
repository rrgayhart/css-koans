require 'spec_helper'

describe Koan do
  context "#validations" do
    it { should validate_presence_of :name }
  end
end
