require "application_system_test_case"

class TweetManagementsTest < ApplicationSystemTestCase
  setup do
    @tweet_management = tweet_managements(:one)
  end

  test "visiting the index" do
    visit tweet_managements_url
    assert_selector "h1", text: "Tweet Managements"
  end

  test "creating a Tweet management" do
    visit tweet_managements_url
    click_on "New Tweet Management"

    fill_in "Description", with: @tweet_management.description
    fill_in "Name", with: @tweet_management.name
    click_on "Create Tweet management"

    assert_text "Tweet management was successfully created"
    click_on "Back"
  end

  test "updating a Tweet management" do
    visit tweet_managements_url
    click_on "Edit", match: :first

    fill_in "Description", with: @tweet_management.description
    fill_in "Name", with: @tweet_management.name
    click_on "Update Tweet management"

    assert_text "Tweet management was successfully updated"
    click_on "Back"
  end

  test "destroying a Tweet management" do
    visit tweet_managements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tweet management was successfully destroyed"
  end
end
