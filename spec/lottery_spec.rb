require_relative './spec_helper'
describe "Lottery" do 	
	it "should have lottery_number and serial_number" do 
		l = Lottery.new("12345","12")
		l.lottery_number.should  == "12345"
		l.serial_number.should == "12"
	end
end