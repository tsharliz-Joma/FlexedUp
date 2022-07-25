require 'test_helper'

class TrainersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get trainers_new_url
    assert_response :success
  end

end
