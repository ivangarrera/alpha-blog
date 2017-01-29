require 'test_helper'

class SignupTest < ActionDispatch::IntegrationTest

  test "sign up user" do
    get signup_path
    assert_template 'users/new'
    assert_difference "User.count", 1 do
      post_via_redirect users_path, user:{username: "john", email: "john@example.com", password: "password"}
    end
    assert_template 'users/index'
    assert_match "john", response.body
  end

end