class Category < ApplicationRecord

    # has_many :products
    # dependent automatically remove all products dependent on this category
    has_many :products, :dependent => :destroy
end
