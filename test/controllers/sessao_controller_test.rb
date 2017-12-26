require 'test_helper'

class SessaoControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sessao_new_url
    assert_response :success
  end

end
