require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get contact_us" do
    get :contact_us
    assert_response :success
  end

end
