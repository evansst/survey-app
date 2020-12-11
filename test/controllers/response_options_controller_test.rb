require 'test_helper'

class ResponseOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @response_option = response_options(:one)
  end

  test "should get index" do
    get response_options_url
    assert_response :success
  end

  test "should get new" do
    get new_response_option_url
    assert_response :success
  end

  test "should create response_option" do
    assert_difference('ResponseOption.count') do
      post response_options_url, params: { response_option: { type: @response_option.type } }
    end

    assert_redirected_to response_option_url(ResponseOption.last)
  end

  test "should show response_option" do
    get response_option_url(@response_option)
    assert_response :success
  end

  test "should get edit" do
    get edit_response_option_url(@response_option)
    assert_response :success
  end

  test "should update response_option" do
    patch response_option_url(@response_option), params: { response_option: { type: @response_option.type } }
    assert_redirected_to response_option_url(@response_option)
  end

  test "should destroy response_option" do
    assert_difference('ResponseOption.count', -1) do
      delete response_option_url(@response_option)
    end

    assert_redirected_to response_options_url
  end
end
