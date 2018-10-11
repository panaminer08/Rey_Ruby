require 'test_helper'

class FlashesControllerTest < ActionDispatch::IntegrationTest
  test "should get amin_panel" do
    get flashes_amin_panel_url
    assert_response :success
  end

end
