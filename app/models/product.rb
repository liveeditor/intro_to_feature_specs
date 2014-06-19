class Product < ActiveRecord::Base
  # money-rails gem
  monetize :price_cents
  monetize :shipping_price_cents

  validates :title, presence: true
  validates :description, presence: true
end
