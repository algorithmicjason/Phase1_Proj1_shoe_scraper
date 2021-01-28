class Candidate < ApplicationRecord
    has_one :contract, through: :recruiter 
	has_one :company, through: :contract 
end