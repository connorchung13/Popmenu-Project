require "application_system_test_case"

class DinnersTest < ApplicationSystemTestCase
  setup do
    @dinner = dinners(:one)
  end

  test "visiting the index" do
    visit dinners_url
    assert_selector "h1", text: "Dinners"
  end

  test "should create dinner" do
    visit dinners_url
    click_on "New dinner"

    fill_in "Item description", with: @dinner.item_description
    fill_in "Item name", with: @dinner.item_name
    fill_in "Item price", with: @dinner.item_price
    click_on "Create Dinner"

    assert_text "Dinner was successfully created"
    click_on "Back"
  end

  test "should update Dinner" do
    visit dinner_url(@dinner)
    click_on "Edit this dinner", match: :first

    fill_in "Item description", with: @dinner.item_description
    fill_in "Item name", with: @dinner.item_name
    fill_in "Item price", with: @dinner.item_price
    click_on "Update Dinner"

    assert_text "Dinner was successfully updated"
    click_on "Back"
  end

  test "should destroy Dinner" do
    visit dinner_url(@dinner)
    click_on "Destroy this dinner", match: :first

    assert_text "Dinner was successfully destroyed"
  end
end
