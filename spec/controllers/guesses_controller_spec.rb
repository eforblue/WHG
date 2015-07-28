require 'spec_helper'
require 'rails_helper'

describe GuessesController do

    describe "GET #create" do
        it "should only take integer for weight input" do
            visit root_path

            weight = rand(70..250)
            fill_in "weight", :with => weight
            fill_in "height", :with => 55
            click_on "guess_gender"
            
        end
    end

    describe "GET #update" do
        it "should successfully updat the database according to the right/wrong  guess" do

        end
    end
end
