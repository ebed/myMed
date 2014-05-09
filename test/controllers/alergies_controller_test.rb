require 'test_helper'

class AlergiesControllerTest < ActionController::TestCase
  setup do
    @alergy = alergies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alergies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alergy" do
    assert_difference('Alergy.count') do
      post :create, alergy: { alergy_name: @alergy.alergy_name, customer_id: @alergy.customer_id, start_date: @alergy.start_date }
    end

    assert_redirected_to alergy_path(assigns(:alergy))
  end

  test "should show alergy" do
    get :show, id: @alergy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alergy
    assert_response :success
  end

  test "should update alergy" do
    patch :update, id: @alergy, alergy: { alergy_name: @alergy.alergy_name, customer_id: @alergy.customer_id, start_date: @alergy.start_date }
    assert_redirected_to alergy_path(assigns(:alergy))
  end

  test "should destroy alergy" do
    assert_difference('Alergy.count', -1) do
      delete :destroy, id: @alergy
    end

    assert_redirected_to alergies_path
  end
end
