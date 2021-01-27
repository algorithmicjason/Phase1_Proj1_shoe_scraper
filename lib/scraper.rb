require 'nokogiri'
require 'httparty'
require 'byebug'


# Scraper module containing other modules required for the project
# <<< Change the name of this outer module >>> #
module Scraper
    module GetDataFromIndeed
        
        # initial scrape
        def scrapeIndeed

            file = File.open("./data.txt")
            jobs = []
            10.times do |t|
                if t == 0
                    url = "https://www.indeed.com/jobs?q=software+engineer+ruby&fromage=14&sort=date"
                else
                    url = "https://www.indeed.com/jobs?q=software+engineer+ruby&sort=date&fromage=14&start=#{t}0"
                end
                unparsed = HTTParty.get(url)
                parsed_page ||= Nokogiri::HTML(unparsed)

                job_title = parsed_page.css("h2[class='title']").collect{|element| element.children.text}
                job_location = parsed_page.css("div[class='sjcl']").collect{|element| element.children[5].inner_text }
                job_company = parsed_page.css("div[class='sjcl']").collect{|element| element.text}
                job_company.map!{|arr| arr.gsub("\n","")}
                15.times do |i|
                    p [job_title[i] + job_company[i] + job_location[i]]
                    jobs = [job_title[i], job_company[i], job_location[i], rand(50_000..180_000)]
                end
                byebug
            end
            # jobs.flatten!
            File.write("data.txt", jobs, mode:"a")


            # https://www.indeed.com/jobs?q=software+engineer+ruby
            # https://www.indeed.com/jobs?q=software+engineer+ruby&start=#{t}0

            # https://www.indeed.com/jobs?q=software+engineer+ruby&fromage=14&sort=date

            # https://www.indeed.com/jobs?q=software+engineer+ruby&sort=date&fromage=14&start=10


            # url = "https://www.indeed.com/jobs?q=software+engineer+ruby"
            # parsed_page = Nokogiri::HTML(unparsed)
            # jobs = parsed_page.css("a[class='jobtitle turnstileLink ']")

        end
    end

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
        end

    end

end

# [TEST] Sees if module works
include Scraper::ScraperJobSearch
# ("h2>span[class='just_job_title']")
# scraper("Atlanta","GA")

include Scraper::GetDataFromIndeed
scrapeIndeed
