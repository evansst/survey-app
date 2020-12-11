require "application_system_test_case"

class ResponseOptionsTest < ApplicationSystemTestCase
  setup do
    @response_option = response_options(:one)
  end

  test "visiting the index" do
    visit response_options_url
    assert_selector "h1", text: "Response Options"
  end

  test "creating a Response option" do
    visit response_options_url
    click_on "New Response Option"

    fill_in "Type", with: @response_option.type
    click_on "Create Response option"

    assert_text "Response option was successfully created"
    click_on "Back"
  end

  test "updating a Response option" do
    visit response_options_url
    click_on "Edit", match: :first

    fill_in "Type", with: @response_option.type
    click_on "Update Response option"

    assert_text "Response option was successfully updated"
    click_on "Back"
  end

  test "destroying a Response option" do
    visit response_options_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Response option was successfully destroyed"
  end
end
