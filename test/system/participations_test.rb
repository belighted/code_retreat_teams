require "application_system_test_case"

class ParticipationsTest < ApplicationSystemTestCase
  setup do
    @participation = participations(:one)
  end

  test "visiting the index" do
    visit participations_url
    assert_selector "h1", text: "Participations"
  end

  test "should create participation" do
    visit participations_url
    click_on "New participation"

    fill_in "Code retreat session", with: @participation.code_retreat_session_id
    fill_in "Primary technology", with: @participation.primary_technology_id
    fill_in "Secondary technology", with: @participation.secondary_technology_id
    fill_in "User", with: @participation.user_id
    click_on "Create Participation"

    assert_text "Participation was successfully created"
    click_on "Back"
  end

  test "should update Participation" do
    visit participation_url(@participation)
    click_on "Edit this participation", match: :first

    fill_in "Code retreat session", with: @participation.code_retreat_session_id
    fill_in "Primary technology", with: @participation.primary_technology_id
    fill_in "Secondary technology", with: @participation.secondary_technology_id
    fill_in "User", with: @participation.user_id
    click_on "Update Participation"

    assert_text "Participation was successfully updated"
    click_on "Back"
  end

  test "should destroy Participation" do
    visit participation_url(@participation)
    click_on "Destroy this participation", match: :first

    assert_text "Participation was successfully destroyed"
  end
end
