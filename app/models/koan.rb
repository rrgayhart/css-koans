class Koan < ActiveRecord::Base
  validates_presence_of :name

  has_one :problem
  has_one :solution
end
