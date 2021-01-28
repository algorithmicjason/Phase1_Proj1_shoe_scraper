class Company < ApplicationRecord
    has_many :candidate, through: :contract
	has_many :contract, through: :recruiter
	has_many :listing 
end
