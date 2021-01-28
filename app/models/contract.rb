class Contract < ApplicationRecord
    belongs_to :recruiter
	belongs_to :company
	belongs_to :candidate
end