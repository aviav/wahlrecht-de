module WahlrechtDe
	class Dataline

		def initialize name, prognosis
			@name = name
			@prognosis = format_prognosis prognosis
		end

		def format_prognosis prognosis
			prognosis.pop
			prognosis = prognosis - ["", "&#8211;"]
			prognosis.each do |datapoint| format_datapoint datapoint end
		end

		def format_datapoint datapoint
			datapoint.sub! ",", "."
			datapoint.chomp! " %"
			datapoint.chomp! ".0"
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