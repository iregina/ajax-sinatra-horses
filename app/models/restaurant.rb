class Restaurant < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  validates :location, presence: true, length: { maximum: 50 }
  validates :cuisine, presence: true, length: { maximum: 50 }
  validates :rating, presence: true, numericality: { only_integer: true, less_than_or_equal_to: 5, greater_than_or_equal_to: 0 }
end
