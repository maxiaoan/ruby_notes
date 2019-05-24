class Product < ApplicationRecord
  belongs_to :category
  # belongs_to :category, touch: true

end
