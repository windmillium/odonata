require "application_system_test_case"

class TumblersTest < ApplicationSystemTestCase
  setup do
    @tumbler = tumblers(:one)
  end

  test "visiting the index" do
    visit tumblers_url
    assert_selector "h1", text: "Tumblers"
  end

  test "should create tumbler" do
    visit tumblers_url
    click_on "New tumbler"

    fill_in "Brand", with: @tumbler.brand
    fill_in "Model", with: @tumbler.model
    fill_in "Name", with: @tumbler.name
    fill_in "User", with: @tumbler.user_id
    click_on "Create Tumbler"

    assert_text "Tumbler was successfully created"
    click_on "Back"
  end

  test "should update Tumbler" do
    visit tumbler_url(@tumbler)
    click_on "Edit this tumbler", match: :first

    fill_in "Brand", with: @tumbler.brand
    fill_in "Model", with: @tumbler.model
    fill_in "Name", with: @tumbler.name
    fill_in "User", with: @tumbler.user_id
    click_on "Update Tumbler"

    assert_text "Tumbler was successfully updated"
    click_on "Back"
  end

  test "should destroy Tumbler" do
    visit tumbler_url(@tumbler)
    accept_confirm { click_on "Destroy this tumbler", match: :first }

    assert_text "Tumbler was successfully destroyed"
  end
end
