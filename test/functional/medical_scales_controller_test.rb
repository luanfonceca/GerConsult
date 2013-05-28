require 'test_helper'

class MedicalScalesControllerTest < ActionController::TestCase
  setup do
    @medical_scale = medical_scales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medical_scales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medical_scale" do
    assert_difference('MedicalScale.count') do
      post :create, medical_scale: { crm: @medical_scale.crm, date: @medical_scale.date }
    end

    assert_redirected_to medical_scale_path(assigns(:medical_scale))
  end

  test "should show medical_scale" do
    get :show, id: @medical_scale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medical_scale
    assert_response :success
  end

  test "should update medical_scale" do
    put :update, id: @medical_scale, medical_scale: { crm: @medical_scale.crm, date: @medical_scale.date }
    assert_redirected_to medical_scale_path(assigns(:medical_scale))
  end

  test "should destroy medical_scale" do
    assert_difference('MedicalScale.count', -1) do
      delete :destroy, id: @medical_scale
    end

    assert_redirected_to medical_scales_path
  end
end
