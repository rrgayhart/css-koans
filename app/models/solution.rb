class Solution < ActiveRecord::Base
  has_attached_file :image, :styles => { :top_crop => ['', :png] },
    :convert_options => { :top_crop => '-resize "900x" +repage -crop "900x400+0+0" -gravity North' }

  validates :image, :attachment_presence => true
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_presence_of :codepen_slug
  validates_presence_of :codepen_username

  belongs_to :koan
end
