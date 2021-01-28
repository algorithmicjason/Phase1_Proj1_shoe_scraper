
class Contract < ApplicationRecord
    belongs_to :recruiters
	belongs_to :companys
	belongs_to :candidates

end