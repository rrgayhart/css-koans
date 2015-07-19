class Koan < ActiveRecord::Base
  validates_presence_of :name

  has_one :problem, dependent: :destroy
  has_one :solution, dependent: :destroy
end
