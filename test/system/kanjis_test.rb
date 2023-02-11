require "application_system_test_case"

class KanjisTest < ApplicationSystemTestCase
  setup do
    @kanji = kanjis(:one)
  end

  test "visiting the index" do
    visit kanjis_url
    assert_selector "h1", text: "Kanjis"
  end

  test "creating a Kanji" do
    visit kanjis_url
    click_on "New Kanji"

    fill_in "Description", with: @kanji.description
    fill_in "Kanji", with: @kanji.kanji
    fill_in "Kun", with: @kanji.kun
    fill_in "On", with: @kanji.on
    click_on "Create Kanji"

    assert_text "Kanji was successfully created"
    click_on "Back"
  end

  test "updating a Kanji" do
    visit kanjis_url
    click_on "Edit", match: :first

    fill_in "Description", with: @kanji.description
    fill_in "Kanji", with: @kanji.kanji
    fill_in "Kun", with: @kanji.kun
    fill_in "On", with: @kanji.on
    click_on "Update Kanji"

    assert_text "Kanji was successfully updated"
    click_on "Back"
  end

  test "destroying a Kanji" do
    visit kanjis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kanji was successfully destroyed"
  end
end
