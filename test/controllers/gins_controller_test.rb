require 'test_helper'

class GinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gin = gins(:one)
  end

  test "should get index" do
    get gins_url
    assert_response :success
  end

  test "should get new" do
    get new_gin_url
    assert_response :success
  end

  test "should create gin" do
    assert_difference('Gin.count') do
      post gins_url, params: { gin: {  } }
    end

    assert_redirected_to gin_url(Gin.last)
  end

  test "should show gin" do
    get gin_url(@gin)
    assert_response :success
  end

  test "should get edit" do
    get edit_gin_url(@gin)
    assert_response :success
  end

  test "should update gin" do
    patch gin_url(@gin), params: { gin: {  } }
    assert_redirected_to gin_url(@gin)
  end

  test "should destroy gin" do
    assert_difference('Gin.count', -1) do
      delete gin_url(@gin)
    end

    assert_redirected_to gins_url
  end
end
