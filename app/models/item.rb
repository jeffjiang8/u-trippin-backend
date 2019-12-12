class Item < ApplicationRecord
    belongs_to :trip
    belongs_to :category
end
