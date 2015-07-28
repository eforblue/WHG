require 'spec_helper'
require 'rails_helper'

describe GuessesController do

    describe "GET #create" do
        it "should successfully provide a guess" do
            visit "new_guess_path"
        end
    end

    describe "GET #update" do
        it "should successfully updat the database according to the right/wrong  guess"
    end
end
