require 'test_helper'

class GuessesControllerTest < ActionController::TestCase
  setup do
    @guess = guesses(:one)
  end

  test "should guess" do
    get :create, id: @guess
    
    assert_response :success
  end

end
