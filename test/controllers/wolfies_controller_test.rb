require 'test_helper'

class WolfiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wolfy = wolfies(:one)
  end

  test "should get index" do
    get wolfies_url
    assert_response :success
  end

  test "should get new" do
    get new_wolfy_url
    assert_response :success
  end

  test "should create wolfy" do
    assert_difference('Wolfy.count') do
      post wolfies_url, params: { wolfy: { dob: @wolfy.dob, name: @wolfy.name, wolfie_level: @wolfy.wolfie_level } }
    end

    assert_redirected_to wolfy_url(Wolfy.last)
  end

  test "should show wolfy" do
    get wolfy_url(@wolfy)
    assert_response :success
  end

  test "should get edit" do
    get edit_wolfy_url(@wolfy)
    assert_response :success
  end

  test "should update wolfy" do
    patch wolfy_url(@wolfy), params: { wolfy: { dob: @wolfy.dob, name: @wolfy.name, wolfie_level: @wolfy.wolfie_level } }
    assert_redirected_to wolfy_url(@wolfy)
  end

  test "should destroy wolfy" do
    assert_difference('Wolfy.count', -1) do
      delete wolfy_url(@wolfy)
    end

    assert_redirected_to wolfies_url
  end
end
