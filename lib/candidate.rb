require_relative './scraper'
# require 'pry'

class Candidate
    attr_accessor :name, :qualification, :city, :state

    extend Scraper::ScraperJobSearch
    @@all_candidates = []
    def initialize(name, qualification,location)
        @@all_candidates << self
        @name = name
        @qualification = qualification
        @city = location[0]
        @state = location[1]    
    end

    def job_from_recruiting_agency
        jobs = scraper(self.city, self.state)
        byebug
    end

end

candidate = Candidate.new("Jacob Lepler", "Software Engineer", ["Bethesda","MD"])
candidate.job_from_recruiting_agency