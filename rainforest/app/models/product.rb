class Product < ApplicationRecord

  validates :name, :description, :price_in_cents, presence: true
  validates :price_in_cents, numericality: true

  def price_in_dollars
    price_in_dollars = price_in_cents.to_f 
    sprintf("$%.2f", price_in_dollars)
  end

end
