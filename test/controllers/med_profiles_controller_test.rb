require 'test_helper'

class MedProfilesControllerTest < ActionController::TestCase
  setup do
    @med_profile = med_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:med_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create med_profile" do
    assert_difference('MedProfile.count') do
      post :create, med_profile: { condition: @med_profile.condition, customer_id: @med_profile.customer_id, start_date: @med_profile.start_date }
    end

    assert_redirected_to med_profile_path(assigns(:med_profile))
  end

  test "should show med_profile" do
    get :show, id: @med_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @med_profile
    assert_response :success
  end

  test "should update med_profile" do
    patch :update, id: @med_profile, med_profile: { condition: @med_profile.condition, customer_id: @med_profile.customer_id, start_date: @med_profile.start_date }
    assert_redirected_to med_profile_path(assigns(:med_profile))
  end

  test "should destroy med_profile" do
    assert_difference('MedProfile.count', -1) do
      delete :destroy, id: @med_profile
    end

    assert_redirected_to med_profiles_path
  end
end
