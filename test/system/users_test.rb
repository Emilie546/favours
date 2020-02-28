require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "create user" do
    visit "/users/sign_up"

    fill_in 'user_first_name', with: 'Hugo'
    fill_in 'user_last_name', with: 'Troxler'
    fill_in 'user_email', with: 'hugo.troxler@outlook.com'
    fill_in 'user_password', with: 'Jgaviphmy4'
    fill_in 'user_password_confirmation', with: 'Jgaviphmy4'

    click_on 'Sign up'

    assert_equal root_path, page.current_path
  end
end
