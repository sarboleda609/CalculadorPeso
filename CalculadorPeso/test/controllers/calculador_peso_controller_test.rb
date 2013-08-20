require 'test_helper'

class CalculadorPesoControllerTest < ActionController::TestCase
  test "should get peso" do
    get :peso
    assert_response :success
  end

end
