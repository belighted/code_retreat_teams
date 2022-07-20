require "application_system_test_case"

class CodeRetreatSessionsTest < ApplicationSystemTestCase
  setup do
    @code_retreat_session = code_retreat_sessions(:one)
  end

  test "visiting the index" do
    visit code_retreat_sessions_url
    assert_selector "h1", text: "Code retreat sessions"
  end

  test "should create code retreat session" do
    visit code_retreat_sessions_url
    click_on "New code retreat session"

    fill_in "Description", with: @code_retreat_session.description
    fill_in "Performed on", with: @code_retreat_session.performed_on
    fill_in "Title", with: @code_retreat_session.title
    click_on "Create Code retreat session"

    assert_text "Code retreat session was successfully created"
    click_on "Back"
  end

  test "should update Code retreat session" do
    visit code_retreat_session_url(@code_retreat_session)
    click_on "Edit this code retreat session", match: :first

    fill_in "Description", with: @code_retreat_session.description
    fill_in "Performed on", with: @code_retreat_session.performed_on
    fill_in "Title", with: @code_retreat_session.title
    click_on "Update Code retreat session"

    assert_text "Code retreat session was successfully updated"
    click_on "Back"
  end

  test "should destroy Code retreat session" do
    visit code_retreat_session_url(@code_retreat_session)
    click_on "Destroy this code retreat session", match: :first

    assert_text "Code retreat session was successfully destroyed"
  end
end
