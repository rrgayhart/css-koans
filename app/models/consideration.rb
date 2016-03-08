class Consideration < ActiveRecord::Base
  validates_presence_of :point
  validates_uniqueness_of :point

  has_and_belongs_to_many :koans
end
