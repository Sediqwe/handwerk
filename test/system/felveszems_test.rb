require "application_system_test_case"

class FelveszemsTest < ApplicationSystemTestCase
  setup do
    @felveszem = felveszems(:one)
  end

  test "visiting the index" do
    visit felveszems_url
    assert_selector "h1", text: "Felveszems"
  end

  test "should create felveszem" do
    visit felveszems_url
    click_on "New felveszem"

    fill_in "Content", with: @felveszem.content
    click_on "Create Felveszem"

    assert_text "Felveszem was successfully created"
    click_on "Back"
  end

  test "should update Felveszem" do
    visit felveszem_url(@felveszem)
    click_on "Edit this felveszem", match: :first

    fill_in "Content", with: @felveszem.content
    click_on "Update Felveszem"

    assert_text "Felveszem was successfully updated"
    click_on "Back"
  end

  test "should destroy Felveszem" do
    visit felveszem_url(@felveszem)
    click_on "Destroy this felveszem", match: :first

    assert_text "Felveszem was successfully destroyed"
  end
end
