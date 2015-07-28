require 'spec_helper'
require 'rails_helper'

describe GuessesController do

    describe "GET #create" do
        it "should successfully provide a guess" do
            visit root_path

            weight = rand(70..250)
            puts "==== input weight: #{weight}"
            fill_in "weight", :with => weight

        end
    end

    describe "GET #update" do
        it "should successfully updat the database according to the right/wrong  guess" do

        end
    end
end
