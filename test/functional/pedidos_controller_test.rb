require 'test_helper'

class PedidosControllerTest < ActionController::TestCase
  setup do
    @pedido = pedidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pedidos)
  end

  test "requerido lineas en carro_id" do

    get :new
    assert_redirected_to tienda_path
    assert_equal flash[:notice], "Carro vacio"
  end

  test "should get new" do

    session[:carro_id] = 1

    get :new
    assert_response :success
  end

  test "should create pedido" do
    assert_difference('Pedido.count') do
      post :create, pedido: { direccion: @pedido.direccion, email: @pedido.email, nombre: @pedido.nombre }
    end

    assert_redirected_to pedido_path(assigns(:pedido))
  end

  test "should show pedido" do
    get :show, id: @pedido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pedido
    assert_response :success
  end

  test "should update pedido" do
    put :update, id: @pedido, pedido: { direccion: @pedido.direccion, email: @pedido.email, nombre: @pedido.nombre }
    assert_redirected_to pedido_path(assigns(:pedido))
  end

  test "should destroy pedido" do
    assert_difference('Pedido.count', -1) do
      delete :destroy, id: @pedido
    end

    assert_redirected_to pedidos_path
  end
end
