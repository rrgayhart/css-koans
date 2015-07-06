class Solution < ActiveRecord::Base
  validates_presence_of :codepen_slug
  validates_presence_of :codepen_username

  belongs_to :koan
end
