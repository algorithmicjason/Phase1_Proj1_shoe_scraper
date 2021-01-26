require 'nokogiri'
require 'httparty'
require 'byebug'


# Scraper module containing other modules required for the project
# <<< Change the name of this outer module >>> #
module Scraper

    # Inner module holds functions to extract data based on url given to HTTParty.get command
    module ScraperJobSearch

        # Scraper function may be called by the recruiter or candidate to get job listings based on search
        # <<< Change function to take in both qualifications-attribute ("software engineer", etc)
        # and location-attributes ("Atlanta", "GA") as options || required make it required >>> #
        def scraper(city, state)
            
            # Stores url that is subjected to change based on parameters given
            url = "https://www.ziprecruiter.com/candidate/search?radius=25&search=software+engineer+ruby&location=#{city}%2C+#{state}"
            # HTTParty.get(url) returns all loaded base html
            unparsed = HTTParty.get(url)
            # Nokogiri seems to "wrap" all html elements with their attributes into callable objects
            parsed_page = Nokogiri::HTML(unparsed)
            # <<< parsed_page is now an array of elements. Able to call css - a nokogiri command that
            # takes in css selectors to filter out unwanted element objects. "jobs" should then
            # hold all the titles of the jobs listed from the search url above>>>
            jobs = parsed_page.css("h2>span[class='just_job_title']")
            # byebug similar to pry we think
            byebug
        end

    end

end

# [TEST] Sees if module works
include Scraper::ScraperJobSearch
# ("h2>span[class='just_job_title']")
scraper("Atlanta","GA")
