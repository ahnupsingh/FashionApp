require "application_system_test_case"

class ParticularsTest < ApplicationSystemTestCase
  setup do
    @particular = particulars(:one)
  end

  test "visiting the index" do
    visit particulars_url
    assert_selector "h1", text: "Particulars"
  end

  test "creating a Particular" do
    visit particulars_url
    click_on "New Particular"

    fill_in "Cus Rate", with: @particular.cus_rate
    fill_in "Emp Rate", with: @particular.emp_rate
    fill_in "Name", with: @particular.name
    click_on "Create Particular"

    assert_text "Particular was successfully created"
    click_on "Back"
  end

  test "updating a Particular" do
    visit particulars_url
    click_on "Edit", match: :first

    fill_in "Cus Rate", with: @particular.cus_rate
    fill_in "Emp Rate", with: @particular.emp_rate
    fill_in "Name", with: @particular.name
    click_on "Update Particular"

    assert_text "Particular was successfully updated"
    click_on "Back"
  end

  test "destroying a Particular" do
    visit particulars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Particular was successfully destroyed"
  end
end
