require_relative './spec_helper'
describe "Lottery",  fakefs: true do 	
	 def stub_etc_tickets
		FileUtils.mkdir("/etc")
		File.open("/etc/tickets", "w") do |f|
			f.puts("1234512")
			f.puts("9999920")
		end
	end
	it "should have lottery_number and serial_number" do 
		l = Ticket.new("1234512")
		l.lottery_number.should  == "12345"
		l.serial_number.should == "12"
		l.to_s.should == "1234512"
	end
		
	it "import Lottery from a file text" do
		stub_etc_tickets				
		l = Lottery.new
		l.import("/etc/tickets").should == ["1234512","9999920"]
        l.tickets[0].to_s.should == "1234512"
        l.tickets[1].to_s.should == "9999920"		
	end

end
