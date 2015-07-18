class Problem < ActiveRecord::Base
  validates_presence_of :codepen_slug
  validates_presence_of :codepen_username

  belongs_to :koan

  def codepen_permalink
    "http://codepen.io/#{codepen_username}/pen/#{codepen_slug}/"
  end
end
