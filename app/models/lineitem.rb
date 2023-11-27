class Lineitem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  belongs_to :order, optional:true

  def total_price_of_items
    self.product.price * self.quantity
  end
end
