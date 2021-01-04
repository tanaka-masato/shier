require 'test_helper'

class WorkplacesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get workplaces_index_url
    assert_response :success
  end

  test "should get new" do
    get workplaces_new_url
    assert_response :success
  end

end
