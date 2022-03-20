require "application_system_test_case"

class DrugsTest < ApplicationSystemTestCase
  setup do
    @drug = drugs(:one)
  end

  test "visiting the index" do
    visit drugs_url
    assert_selector "h1", text: "Drugs"
  end

  test "creating a Drug" do
    visit drugs_url
    click_on "New Drug"

    fill_in "Date created", with: @drug.date_created
    fill_in "Date expire", with: @drug.date_expire
    fill_in "Drug name", with: @drug.drug_name
    fill_in "Drug price", with: @drug.drug_price
    click_on "Create Drug"

    assert_text "Drug was successfully created"
    click_on "Back"
  end

  test "updating a Drug" do
    visit drugs_url
    click_on "Edit", match: :first

    fill_in "Date created", with: @drug.date_created
    fill_in "Date expire", with: @drug.date_expire
    fill_in "Drug name", with: @drug.drug_name
    fill_in "Drug price", with: @drug.drug_price
    click_on "Update Drug"

    assert_text "Drug was successfully updated"
    click_on "Back"
  end

  test "destroying a Drug" do
    visit drugs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Drug was successfully destroyed"
  end
end
