require 'rails_helper'

feature 'posts' do
  context 'no posts have been added' do
    scenario 'should display a prompt to add a post' do
      visit '/posts'
      expect(page).to have_content 'No posts yet'
      expect(page).to have_link 'Add a post'
    end
  end

	context 'adding a post' do
		scenario 'should be able to add a post' do
			create_user
			visit '/posts'
			click_link 'Add a post'
			fill_in 'Caption', with: 'My baby'
			attach_file("Image", Rails.root + "spec/images/example.jpg")
			click_button("Create Post")
			expect(page).to have_content 'My baby'
			expect(page).to have_css('img', '/system/posts/images/000/000/001/medium/example.jpg')
		end
	end

	context 'editing post' do

		scenario 'let a user edit a post' do
			create_user
			add_a_post
			click_link 'Edit'
			fill_in 'Caption', with: 'Hello you'
			click_button 'Update Post'
			expect(page).to have_content 'Hello you'
		end

	end

	context 'deleting post' do

	  scenario 'removes a post when the delete link is clicked' do
	    create_user
	    add_a_post
	    click_link 'Delete'
	    expect(page).not_to have_content 'Hello there'
	    expect(page).to have_content 'Post deleted successfully'
	  end

end

end