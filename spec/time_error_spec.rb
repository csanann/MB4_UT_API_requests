#file: spec/time_error_spec.rb
# create a test double for the dependecy in the test and set up its expected behavior
require 'time_error'
require 'time'
#it then sets up the expected behavior for the requester double and asserts the correct time differnce
RSpec.describe TimeError do
    it "returns the difference in seconds between sever time and local time" do
        #create a double for requester object
        requester_dbl = double(:requester)

        #stub the behavior of Time.now to return a fixed time
        allow(Time).to receive(:now).and_return(Time.parse("2023-04-21T12:00:00Z"))

        #set the expecred beheviour for the requester double
        expected_response = '{"utc_datetime": "2023-04-21T12:01:00:000Z"}'
        expect(requester_dbl).to receive(:get)
            .with(URI("https://worldtimeapi.org/api/ip"))
            .and_return(expected_response)
        
        #create a new TimeError with the requester double
        time_error = TimeError.new(requester_dbl)

        #check if it's true, assert the time difference is as expected, 60 sec difference
        expect(time_error.error).to eq 60.0
    end
end