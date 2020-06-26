require 'test_helper'

class SabrolazersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sabrolazer = sabrolazers(:one)
  end

  test "should get index" do
    get sabrolazers_url
    assert_response :success
  end

  test "should get new" do
    get new_sabrolazer_url
    assert_response :success
  end

  test "should create sabrolazer" do
    assert_difference('Sabrolazer.count') do
      post sabrolazers_url, params: { sabrolazer: { color: @sabrolazer.color, level: @sabrolazer.level, title: @sabrolazer.title } }
    end

    assert_redirected_to sabrolazer_url(Sabrolazer.last)
  end

  test "should show sabrolazer" do
    get sabrolazer_url(@sabrolazer)
    assert_response :success
  end

  test "should get edit" do
    get edit_sabrolazer_url(@sabrolazer)
    assert_response :success
  end

  test "should update sabrolazer" do
    patch sabrolazer_url(@sabrolazer), params: { sabrolazer: { color: @sabrolazer.color, level: @sabrolazer.level, title: @sabrolazer.title } }
    assert_redirected_to sabrolazer_url(@sabrolazer)
  end

  test "should destroy sabrolazer" do
    assert_difference('Sabrolazer.count', -1) do
      delete sabrolazer_url(@sabrolazer)
    end

    assert_redirected_to sabrolazers_url
  end
end
