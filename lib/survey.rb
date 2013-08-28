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
			row_data = parse_rowdata row
			@datalines.push(Dataline.new(row.at_xpath("th/text()").to_s, row_data))
		end

		def parse_rowdata row
			row_data = []
			datas = row.xpath("td")
			datas.each do |data|
				row_data.push(data.at_xpath("text()").to_s)
			end
			row_data
		end

		def to_s
			@datalines.each do |dataline|
				puts dataline
			end
		end

	end
end