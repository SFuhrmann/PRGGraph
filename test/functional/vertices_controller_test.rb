require 'test_helper'

class VerticesControllerTest < ActionController::TestCase
  setup do
    @vertex = vertices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vertices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vertex" do
    assert_difference('Vertex.count') do
      post :create, :vertex => @vertex.attributes
    end

    assert_redirected_to vertex_path(assigns(:vertex))
  end

  test "should show vertex" do
    get :show, :id => @vertex.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @vertex.to_param
    assert_response :success
  end

  test "should update vertex" do
    put :update, :id => @vertex.to_param, :vertex => @vertex.attributes
    assert_redirected_to vertex_path(assigns(:vertex))
  end

  test "should destroy vertex" do
    assert_difference('Vertex.count', -1) do
      delete :destroy, :id => @vertex.to_param
    end

    assert_redirected_to vertices_path
  end
end
