require 'open-uri'
require 'nokogiri'
require_relative 'dataline'

module WahlrechtDe
	class Survey

		attr_reader :rows

		def initialize
			doc = Nokogiri::HTML(open("http://www.wahlrecht.de/umfragen/index.htm"))
			@rows = doc.xpath("//table/tbody/tr")
			@datalines = []
		end

		def parse index
			row = @rows[index]
			@datalines.push Dataline.new row
		end

		def to_s
			@datalines.each do |dataline|
				puts dataline
			end
		end

	end
end