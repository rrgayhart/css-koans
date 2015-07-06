class Solution < ActiveRecord::Base
  validates_presence_of :codepen_slug
  validates_presence_of :codepen_username
  validates_presence_of :full_name

  belongs_to :koan
end
