require "application_system_test_case"

class SabrolazersTest < ApplicationSystemTestCase
  setup do
    @sabrolazer = sabrolazers(:one)
  end

  test "visiting the index" do
    visit sabrolazers_url
    assert_selector "h1", text: "Sabrolazers"
  end

  test "creating a Sabrolazer" do
    visit sabrolazers_url
    click_on "New Sabrolazer"

    fill_in "Color", with: @sabrolazer.color
    fill_in "Level", with: @sabrolazer.level
    fill_in "Title", with: @sabrolazer.title
    click_on "Create Sabrolazer"

    assert_text "Sabrolazer was successfully created"
    click_on "Back"
  end

  test "updating a Sabrolazer" do
    visit sabrolazers_url
    click_on "Edit", match: :first

    fill_in "Color", with: @sabrolazer.color
    fill_in "Level", with: @sabrolazer.level
    fill_in "Title", with: @sabrolazer.title
    click_on "Update Sabrolazer"

    assert_text "Sabrolazer was successfully updated"
    click_on "Back"
  end

  test "destroying a Sabrolazer" do
    visit sabrolazers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sabrolazer was successfully destroyed"
  end
end
