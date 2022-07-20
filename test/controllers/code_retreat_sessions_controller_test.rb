require "test_helper"

class CodeRetreatSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @code_retreat_session = code_retreat_sessions(:one)
  end

  test "should get index" do
    get code_retreat_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_code_retreat_session_url
    assert_response :success
  end

  test "should create code_retreat_session" do
    assert_difference("CodeRetreatSession.count") do
      post code_retreat_sessions_url, params: { code_retreat_session: { description: @code_retreat_session.description, performed_on: @code_retreat_session.performed_on, title: @code_retreat_session.title } }
    end

    assert_redirected_to code_retreat_session_url(CodeRetreatSession.last)
  end

  test "should show code_retreat_session" do
    get code_retreat_session_url(@code_retreat_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_code_retreat_session_url(@code_retreat_session)
    assert_response :success
  end

  test "should update code_retreat_session" do
    patch code_retreat_session_url(@code_retreat_session), params: { code_retreat_session: { description: @code_retreat_session.description, performed_on: @code_retreat_session.performed_on, title: @code_retreat_session.title } }
    assert_redirected_to code_retreat_session_url(@code_retreat_session)
  end

  test "should destroy code_retreat_session" do
    assert_difference("CodeRetreatSession.count", -1) do
      delete code_retreat_session_url(@code_retreat_session)
    end

    assert_redirected_to code_retreat_sessions_url
  end
end
