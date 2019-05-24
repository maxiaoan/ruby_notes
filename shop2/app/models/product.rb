class Product < ApplicationRecord
    
    scope :available, -> { where(in_stock: true) }
    scope :cheap, -> { where(:price => 0..1) }
    scope :cheaper_than, ->(price) { where("price < ?", price) }

    validates :name,
               :presence => true,
               #:length => {is: 8}
               #:length =>{ in: 2..20}
               :length => { minimum:2, maximum:20 },
               :uniqueness: true
               
    validates :price,
                :presence => true,
                :length => {in: 1..7}
    
            
    validates :weight,
              :numericality => true
              # options
              # lese_than_or_equal
              # even,odd euqal_to, less_than, greater_than_or_equal_to
    validates :in_stock,
              :inclusion => { in: [true, false], message:"This one is not allowed" }
            #   :exclusion => { in: [nil], message: "This one is not allowed"}

end