class Client < ActiveRecord::Base
    has_many :orders
    has_many :ordered_products, through: :orders, source: :products
    has_many :comments, foreign_key: 'author_id'

    validates :firstname, :lastname, presence: true, length: {:minimum => 2}

    def to_s
        "#{firstname} #{lastname}"
    end
end