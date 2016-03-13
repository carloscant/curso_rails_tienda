require 'test_helper'

class CarroLineasControllerTest < ActionController::TestCase
  setup do
    @carro_linea = carro_lineas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carro_lineas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carro_linea" do
    assert_difference('CarroLinea.count') do
      post :create, product_id: products(:iphone4).id
    end

    assert_redirected_to carro_path(assigns(:carro_linea).carro)
  end

  test "should show carro_linea" do
    get :show, id: @carro_linea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @carro_linea
    assert_response :success
  end

  test "should update carro_linea" do
    put :update, id: @carro_linea, carro_linea: { carro_id: @carro_linea.carro_id, product_id: @carro_linea.product_id }
    assert_redirected_to carro_linea_path(assigns(:carro_linea))
  end

  test "should destroy carro_linea" do

    assert_difference('CarroLinea.count', -1) do
      delete :destroy, id: @carro_linea
    end

    assert_redirected_to carro_path(carros(:one))
  end
end
