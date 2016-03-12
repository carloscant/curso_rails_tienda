require 'test_helper'

class TiendaControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert_response :success
    assert_select "h1", "Mi tienda"
    assert_select ".producto", 3
    assert_select ".precio", /[\d]+\.\d\d/
  end

end
