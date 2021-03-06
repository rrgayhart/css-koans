require 'spec_helper'

describe Solution do
  it { should validate_presence_of :codepen_slug }
  it { should validate_presence_of :codepen_username }
  it { should belong_to :koan }
  it { should have_attached_file(:image) }
  it { should validate_attachment_presence(:image) }
  it { should validate_attachment_content_type(:image).
       allowing('image/png', 'image/gif').
       rejecting('text/plain', 'text/xml') }
end
