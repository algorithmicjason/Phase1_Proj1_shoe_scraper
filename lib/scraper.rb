require 'nokogiri'
require 'httparty'
require 'byebug'

# Jacob was here on Jason's branch
module Scraper

    module ScraperJobSearch

        def scraper(city, state)
            url = "https://www.ziprecruiter.com/candidate/search?radius=25&search=software+engineer+ruby&location=#{city}%2C+#{state}"
            unparsed = HTTParty.get(url)
            parsed_page = Nokogiri::HTML(unparsed)
            jobs = parsed_page.css("h2>span[class='just_job_title']")
            # byebug
        end

    end

end

include Scraper::ScraperJobSearch

# scraper
