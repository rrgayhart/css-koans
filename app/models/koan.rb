class Koan < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :codepen_slug
  validates_presence_of :codepen_username
  validates_presence_of :client_email_body

  has_one :problem, dependent: :destroy
  has_one :solution, dependent: :destroy

  GITHUB_ORGANIZATION = 'css-koans'

  def codepen_permalink
    "http://codepen.io/#{codepen_username}/pen/#{codepen_slug}/"
  end

  def github_permalink
    "https://github.com/#{GITHUB_ORGANIZATION}/#{github_slug}"
  end
end
