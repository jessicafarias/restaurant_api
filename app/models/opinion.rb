class Opinion < ApplicationRecord
  belongs_to :restaurant, class_name: 'Restaurant', foreign_key: 'restaurant_id'
  scope :order_desc, -> { order(created_at: :desc) }

end
