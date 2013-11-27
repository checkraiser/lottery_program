require_relative './spec_helper'
describe "Lottery" do 	
	it "should have lottery_number and serial_number" do 
		l = Lottery.new("12345","12")
		l.lottery_number.should  == "12345"
		l.serial_number.should == "12"
	end
	
	it "read a file text" do
		l = Lottery.new
		l = File.open('filetoread').to_read_by_line
	        l[0] = 12345, 12
	        l[1] = 99999, 20
		l.length.should ==" #{l.length}ticket were sold!"
	end
	
end  
end
