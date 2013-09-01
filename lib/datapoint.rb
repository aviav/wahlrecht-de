module WahlrechtDe
  class Datapoint
  	include Comparable
  	attr_reader :content

  	def initialize data
  		format_data data
  		@content = data
  	end

		def format_data data
			data.sub! ",", "."
			data.chomp! " %"
			data.chomp! ".0"
		end

		def <=> other
			Float(self.content) <=> Float(other.content)
		end

		def to_s
			"#{@content}"
		end

  end
end