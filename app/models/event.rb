class Event < ApplicationRecord
    belongs_to :admin, class_name: 'User'
    has_many :attendances
    has_many :users, through: :attendances
  
    validates :start_date, presence: true
    validates :duration, presence: true, numericality: { only_integer: true, greater_than: 0, multiple_of: 5 }
    validates :title, presence: true, length: { in: 5..140 }
    validates :description, presence: true, length: { in: 20..1000 }
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 1000 }
    validates :location, presence: true
  
end
