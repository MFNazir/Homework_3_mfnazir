require "application_system_test_case"

class MetalitemsTest < ApplicationSystemTestCase
  setup do
    @metalitem = metalitems(:one)
  end

  test "visiting the index" do
    visit metalitems_url
    assert_selector "h1", text: "Metalitems"
  end

  test "creating a Metalitem" do
    visit metalitems_url
    click_on "New Metalitem"

    fill_in "Description", with: @metalitem.description
    fill_in "Quantity", with: @metalitem.quantity
    fill_in "Unit price", with: @metalitem.unit_price
    click_on "Create Metalitem"

    assert_text "Metalitem was successfully created"
    click_on "Back"
  end

  test "updating a Metalitem" do
    visit metalitems_url
    click_on "Edit", match: :first

    fill_in "Description", with: @metalitem.description
    fill_in "Quantity", with: @metalitem.quantity
    fill_in "Unit price", with: @metalitem.unit_price
    click_on "Update Metalitem"

    assert_text "Metalitem was successfully updated"
    click_on "Back"
  end

  test "destroying a Metalitem" do
    visit metalitems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Metalitem was successfully destroyed"
  end
end
