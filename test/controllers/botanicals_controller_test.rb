require 'test_helper'

class BotanicalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @botanical = botanicals(:one)
  end

  test "should get index" do
    get botanicals_url
    assert_response :success
  end

  test "should get new" do
    get new_botanical_url
    assert_response :success
  end

  test "should create botanical" do
    assert_difference('Botanical.count') do
      post botanicals_url, params: { botanical: { description: @botanical.description, name: @botanical.name } }
    end

    assert_redirected_to botanical_url(Botanical.last)
  end

  test "should show botanical" do
    get botanical_url(@botanical)
    assert_response :success
  end

  test "should get edit" do
    get edit_botanical_url(@botanical)
    assert_response :success
  end

  test "should update botanical" do
    patch botanical_url(@botanical), params: { botanical: { description: @botanical.description, name: @botanical.name } }
    assert_redirected_to botanical_url(@botanical)
  end

  test "should destroy botanical" do
    assert_difference('Botanical.count', -1) do
      delete botanical_url(@botanical)
    end

    assert_redirected_to botanicals_url
  end
end
