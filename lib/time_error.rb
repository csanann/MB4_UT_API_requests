#file: lib/time_error.rb
require 'date'
require 'json'
require 'net/http'
# the class accepts a requester object(Net::HTTP) as an argument in its constructor and uses it to make the API call
class TimeError
    
    def initialize(requester)
        #add a constructor that accepts a requester object(Net:HTTP)
        @requester = requester
    end
    #return difference in sec between server time and the time on this computer
    def error
        return get_server_time - Time.now
    end

    private

    def get_server_time
        text_response = @requester.get(URI("https://worldtimeapi.org/api/ip"))
        json = JSON.parse(text_response)
        return DateTime.parse(json["utc_datetime"]).to_time
    end
end