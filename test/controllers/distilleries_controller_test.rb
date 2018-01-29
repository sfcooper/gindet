require 'test_helper'

class DistilleriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @distillery = distilleries(:one)
  end

  test "should get index" do
    get distilleries_url
    assert_response :success
  end

  test "should get new" do
    get new_distillery_url
    assert_response :success
  end

  test "should create distillery" do
    assert_difference('Distillery.count') do
      post distilleries_url, params: { distillery: {  } }
    end

    assert_redirected_to distillery_url(Distillery.last)
  end

  test "should show distillery" do
    get distillery_url(@distillery)
    assert_response :success
  end

  test "should get edit" do
    get edit_distillery_url(@distillery)
    assert_response :success
  end

  test "should update distillery" do
    patch distillery_url(@distillery), params: { distillery: {  } }
    assert_redirected_to distillery_url(@distillery)
  end

  test "should destroy distillery" do
    assert_difference('Distillery.count', -1) do
      delete distillery_url(@distillery)
    end

    assert_redirected_to distilleries_url
  end
end
