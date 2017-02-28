require 'rails_helper'

feature 'liking posts' do

	before do
		create_user
		add_a_post	
	end

	scenario 'a user can like a photo which updates the post like count', js: true do
		
		visit '/posts'
		click_link 'Like'
		expect(page).to have_content('1 like')
   end

end