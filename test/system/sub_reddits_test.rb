require "application_system_test_case"

class SubRedditsTest < ApplicationSystemTestCase
  setup do
    @sub_reddit = sub_reddits(:one)
  end

  test "visiting the index" do
    visit sub_reddits_url
    assert_selector "h1", text: "Sub Reddits"
  end

  test "creating a Sub reddit" do
    visit sub_reddits_url
    click_on "New Sub Reddit"

    fill_in "Description", with: @sub_reddit.description
    fill_in "Name", with: @sub_reddit.name
    click_on "Create Sub reddit"

    assert_text "Sub reddit was successfully created"
    click_on "Back"
  end

  test "updating a Sub reddit" do
    visit sub_reddits_url
    click_on "Edit", match: :first

    fill_in "Description", with: @sub_reddit.description
    fill_in "Name", with: @sub_reddit.name
    click_on "Update Sub reddit"

    assert_text "Sub reddit was successfully updated"
    click_on "Back"
  end

  test "destroying a Sub reddit" do
    visit sub_reddits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sub reddit was successfully destroyed"
  end
end
