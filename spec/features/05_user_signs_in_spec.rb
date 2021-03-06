require "rails_helper"
require_relative "../factories/user_factory"

feature "user signs in" do
  let!(:user)   { FactoryGirl.create(:user) }

  scenario "an existing user specifies a valid email and password" do
    visit root_path
    click_link "Sign In"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password

    click_button "Log In"
    expect(page).to have_content("Logout")
  end

  scenario "a nonexistent email and password is supplied" do
    visit root_path
    click_link "Sign In"
    fill_in "Email", with: "nobody@example.com"
    fill_in "Password", with: "password"
    click_button "Log In"

    expect(page).to have_content("Invalid Email or password.")
    expect(page).to_not have_content("Welcome Back!")
    expect(page).to_not have_content("Logout")
  end

  scenario 'an existing email with the wrong password is denied access' do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'anotherpassword'
    click_button 'Log In'

    expect(page).to have_content('Invalid Email or password.')
    expect(page).to_not have_content('Logout')
  end

  scenario 'an already authenticated user cannot re-sign in' do
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log In'

    expect(page).to have_content('Logout')
    expect(page).to_not have_content('Sign In')

    visit new_user_session_path
    expect(page).to have_content('You are already signed in.')
  end
end
