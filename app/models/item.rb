class Item < ApplicationRecord
    belongs_to :cart_item
    belongs_to :cart through :cart_items
end
