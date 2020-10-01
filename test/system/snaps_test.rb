require "application_system_test_case"

class SnapsTest < ApplicationSystemTestCase
  setup do
    @snap = snaps(:one)
  end

  test "visiting the index" do
    visit snaps_url
    assert_selector "h1", text: "Snaps"
  end

  test "creating a Snap" do
    visit snaps_url
    click_on "New Snap"

    fill_in "Detail", with: @snap.detail
    fill_in "Images", with: @snap.images
    fill_in "Title", with: @snap.title
    click_on "Create Snap"

    assert_text "Snap was successfully created"
    click_on "Back"
  end

  test "updating a Snap" do
    visit snaps_url
    click_on "Edit", match: :first

    fill_in "Detail", with: @snap.detail
    fill_in "Images", with: @snap.images
    fill_in "Title", with: @snap.title
    click_on "Update Snap"

    assert_text "Snap was successfully updated"
    click_on "Back"
  end

  test "destroying a Snap" do
    visit snaps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Snap was successfully destroyed"
  end
end
