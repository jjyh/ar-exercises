class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: true, inclusion: 40..200 #{ greater_than: 40, less_than: 3000 }
  validates :store_id,    presence: true

end
