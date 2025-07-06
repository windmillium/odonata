require "test_helper"

class TumblersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tumbler = tumblers(:one)
  end

  test "should get index" do
    get tumblers_url
    assert_response :success
  end

  test "should get new" do
    get new_tumbler_url
    assert_response :success
  end

  test "should create tumbler" do
    assert_difference("Tumbler.count") do
      post tumblers_url, params: { tumbler: { brand: @tumbler.brand, model: @tumbler.model, name: @tumbler.name, user_id: @tumbler.user_id } }
    end

    assert_redirected_to tumbler_url(Tumbler.last)
  end

  test "should show tumbler" do
    get tumbler_url(@tumbler)
    assert_response :success
  end

  test "should get edit" do
    get edit_tumbler_url(@tumbler)
    assert_response :success
  end

  test "should update tumbler" do
    patch tumbler_url(@tumbler), params: { tumbler: { brand: @tumbler.brand, model: @tumbler.model, name: @tumbler.name, user_id: @tumbler.user_id } }
    assert_redirected_to tumbler_url(@tumbler)
  end

  test "should destroy tumbler" do
    assert_difference("Tumbler.count", -1) do
      delete tumbler_url(@tumbler)
    end

    assert_redirected_to tumblers_url
  end
end
