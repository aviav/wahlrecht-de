require_relative 'survey'

module WahlrechtDe
	class Runner

		def initialize
			@line_range = (1..7)
		end

		def run
			survey = Survey.new
			@line_range.each do |row| survey.parse row end
			survey.to_s
		end
	end
end