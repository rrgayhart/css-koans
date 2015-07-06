require 'spec_helper'

describe Problem do
  context "#validations" do
    it { should validate_presence_of :codepen_slug }
    it { should validate_presence_of :codepen_username }
    it { should belong_to :koan }
  end
end
