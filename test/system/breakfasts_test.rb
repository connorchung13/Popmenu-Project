require "application_system_test_case"

class BreakfastsTest < ApplicationSystemTestCase
  setup do
    @breakfast = breakfasts(:one)
  end

  test "visiting the index" do
    visit breakfasts_url
    assert_selector "h1", text: "Breakfasts"
  end

  test "should create breakfast" do
    visit breakfasts_url
    click_on "New breakfast"

    fill_in "Item description", with: @breakfast.item_description
    fill_in "Item name", with: @breakfast.item_name
    fill_in "Item price", with: @breakfast.item_price
    click_on "Create Breakfast"

    assert_text "Breakfast was successfully created"
    click_on "Back"
  end

  test "should update Breakfast" do
    visit breakfast_url(@breakfast)
    click_on "Edit this breakfast", match: :first

    fill_in "Item description", with: @breakfast.item_description
    fill_in "Item name", with: @breakfast.item_name
    fill_in "Item price", with: @breakfast.item_price
    click_on "Update Breakfast"

    assert_text "Breakfast was successfully updated"
    click_on "Back"
  end

  test "should destroy Breakfast" do
    visit breakfast_url(@breakfast)
    click_on "Destroy this breakfast", match: :first

    assert_text "Breakfast was successfully destroyed"
  end
end
