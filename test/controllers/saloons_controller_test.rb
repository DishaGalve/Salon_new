require 'test_helper'

class SaloonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get saloons_index_url
    assert_response :success
  end

end
