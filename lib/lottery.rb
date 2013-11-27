class Ticket
	attr_accessor :lottery_number, :serial_number	
	def initialize(str)
		@lottery_number = str[0..-3]
		@serial_number = str[-2..-1]
	end
	def to_s
		(lottery_number || "") + (serial_number || "")
	end
end
class Lottery
	attr_accessor :tickets
	def initialize
		@tickets = Array.new
	end
	def import(path)
		 File.readlines(path).
			#reject { |line| line =~ /^\s*#/ }.
			map {|line| @tickets << Ticket.new(line.strip)}
		return @tickets.map {|t| t.to_s}
	end
end