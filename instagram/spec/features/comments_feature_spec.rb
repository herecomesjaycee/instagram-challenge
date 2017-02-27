require 'rails_helper'

feature 'commenting' do

  scenario 'allows users to leave a review using a form' do
     create_user
     add_a_post
     click_link 'Comment'
     fill_in "Content", with: "Cute"
     click_button 'Comment'
     expect(page).to have_content('Cute')
  end

end