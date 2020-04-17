require 'test_helper'

class VideoesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get videoes_index_url
    assert_response :success
  end

end
