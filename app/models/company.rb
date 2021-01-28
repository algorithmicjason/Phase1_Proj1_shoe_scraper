class Company < ActiveRecord::Base
    has_many :listings

    def make_listing()
end
