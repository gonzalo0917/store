require 'test_helper'

class LearnControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get more" do
    get :more
    assert_response :success
  end

end
