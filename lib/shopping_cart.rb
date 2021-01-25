require_relative "shoe"
require_relative "customer"

class ShoppingCart
    
    @@all = [] 

    def initialize(shoe_id, username)
        @shoe_id = shoe_id
        @username = username

        @@all << self
    end

    def cart
        self
    end

end