class Order < ApplicationRecord
    has_many :lineitems, dependent: :destroy

    PAYTYPES = ["check", "credit card", "paypal", "Venmo"]
    validates(:name, :address, :email, presence: true)
    validates(:paytype, inclusion: PAYTYPES)

    def add_order_id_in_lineitems
        cart.lineitems.each do |item|
            item.order_id = self.id
            item.cart_id = nil
        end
    end
end
