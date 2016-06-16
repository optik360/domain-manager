require 'rails_helper'

feature 'Users' do
  background do
    user = User.create!(email: 'test@test.com', password: '12341234', password_confirmation: '12341234')
    login_as(user)
  end

  scenario 'A logged user show the list of users' do
    user2 = User.create!(email: 'test2@test.com', password: '12341234', password_confirmation: '12341234')
    visit users_path
    expect(page).to have_content(user2.email)
  end

  scenario 'A logged user get the list of user and goes delete one of them' do
    user2 = User.create!(email: 'test2@test.com', password: '12341234', password_confirmation: '12341234')
    visit users_path
    expect(page).to have_link('Supprimer')
    click_on 'Supprimer'
    page.should have_no_content(user2.email);
  end
end