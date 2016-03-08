require 'spec_helper'

describe Consideration do
  it { should validate_presence_of :point }
  it { should validate_uniqueness_of :point }
  it { should have_and_belong_to_many :koans }
end
