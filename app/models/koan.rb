class Koan < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :codepen_slug
  validates_presence_of :codepen_username

  has_one :problem, dependent: :destroy
  has_one :solution, dependent: :destroy

  def codepen_permalink
    "http://codepen.io/#{codepen_username}/pen/#{codepen_slug}/"
  end
end
