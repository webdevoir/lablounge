require 'test_helper'

class LashConsentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get lash_consents_new_url
    assert_response :success
  end

end
