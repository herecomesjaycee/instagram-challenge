require 'rails_helper'

feature 'liking posts' do

	scenario 'a user can like a photo which updates the post like count', js: true do
		create_user
		add_a_post
		visit '/posts'
		click_link 'Like'
		expect(page).to have_content('1 Like')
   end

end