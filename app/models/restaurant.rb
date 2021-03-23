class Restaurant < ApplicationRecord
  has_many :opinions, class_name: 'Opinion', foreign_key: 'restaurant_id'
  has_many_attached :images
end
