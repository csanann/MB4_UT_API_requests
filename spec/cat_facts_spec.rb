#file: spec/cat_facts_spec.rb

require 'cat_facts'


RSpec.describe CatFacts do
    #to provide a cat facts
    it "provides a cat fact" do
        #create a double for requester object
        requester_dbl = double(:requester)

        #set the expected behaviour for the requester double
        expected_response = ' {"fact": "Cats can jump up to six times their length."}'
        expect(requester_dbl).to receive(:get)
            .with(URI("https://catfact.ninja/fact"))
            .and_return(expected_response)
        
        #create a new CatFacts with the requester double
        cat_facts = CatFacts.new(requester_dbl)

        #asset the provided cat fact is as expected
        expect(cat_facts.provide).to eq "Cat fact: Cats can jump up to six times their length."
    end
end