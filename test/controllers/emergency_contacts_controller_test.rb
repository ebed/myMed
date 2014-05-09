require 'test_helper'

class EmergencyContactsControllerTest < ActionController::TestCase
  setup do
    @emergency_contact = emergency_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emergency_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emergency_contact" do
    assert_difference('EmergencyContact.count') do
      post :create, emergency_contact: { contact_address: @emergency_contact.contact_address, contact_city: @emergency_contact.contact_city, contact_country: @emergency_contact.contact_country, contact_email: @emergency_contact.contact_email, contact_mob_phone: @emergency_contact.contact_mob_phone, contact_phone: @emergency_contact.contact_phone, contact_photo: @emergency_contact.contact_photo, contact_relationship: @emergency_contact.contact_relationship, contact_state: @emergency_contact.contact_state, contact_zip: @emergency_contact.contact_zip, costumer_id: @emergency_contact.costumer_id, fname: @emergency_contact.fname, lname: @emergency_contact.lname }
    end

    assert_redirected_to emergency_contact_path(assigns(:emergency_contact))
  end

  test "should show emergency_contact" do
    get :show, id: @emergency_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emergency_contact
    assert_response :success
  end

  test "should update emergency_contact" do
    patch :update, id: @emergency_contact, emergency_contact: { contact_address: @emergency_contact.contact_address, contact_city: @emergency_contact.contact_city, contact_country: @emergency_contact.contact_country, contact_email: @emergency_contact.contact_email, contact_mob_phone: @emergency_contact.contact_mob_phone, contact_phone: @emergency_contact.contact_phone, contact_photo: @emergency_contact.contact_photo, contact_relationship: @emergency_contact.contact_relationship, contact_state: @emergency_contact.contact_state, contact_zip: @emergency_contact.contact_zip, costumer_id: @emergency_contact.costumer_id, fname: @emergency_contact.fname, lname: @emergency_contact.lname }
    assert_redirected_to emergency_contact_path(assigns(:emergency_contact))
  end

  test "should destroy emergency_contact" do
    assert_difference('EmergencyContact.count', -1) do
      delete :destroy, id: @emergency_contact
    end

    assert_redirected_to emergency_contacts_path
  end
end
