class Company < ApplicationRecord
    has_many :candidates, through: :contracts
	has_many :contracts, through: :recruiters
	has_many :listings

end
