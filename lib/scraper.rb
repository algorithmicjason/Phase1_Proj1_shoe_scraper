require 'nokogiri'
require 'httparty'
require 'byebug'

def scaper
    url = "https://blockwork.cc"
    unpatsed_page = HTTParty
    parsed_page = Nokogiri::HTML(unparsed)
    byebug
end

scaper