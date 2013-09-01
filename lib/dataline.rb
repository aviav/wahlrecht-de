require_relative 'datapoint'

module WahlrechtDe
	class Dataline

		def initialize row
			@name = row.at_xpath("th/text()").to_s
			@prognosis = parse_rowdata row
		end

		def parse_rowdata row
			row_data = []
			datas = row.xpath("td")
			datas.pop
			datas.each do |data|
				string_data = data.at_xpath("text()").to_s
				unless (string_data == "" or string_data == "&#8211;")
					row_data.push Datapoint.new string_data
				end
			end
			row_data
		end

		def prognosis_range
			cut_and_sorted_prognosis = cut_extremes
			[cut_and_sorted_prognosis[0], cut_and_sorted_prognosis.last]
		end

		def cut_extremes
			sorted_prognosis = @prognosis.sort
			sorted_prognosis.pop
			sorted_prognosis.shift
			sorted_prognosis
		end

		def to_s
			range = prognosis_range
			if range[0] == range[1]
				"#{@name}: #{range[0]}%"
			else
			  "#{@name}: #{range[0]}% bis #{range[1]}%"
			end
		end

	end
end