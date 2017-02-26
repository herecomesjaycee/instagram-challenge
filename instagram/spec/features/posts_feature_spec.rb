require 'rails_helper'

feature 'posts' do
  context 'no posts have been added' do
    scenario 'should display a prompt to add a post' do
      visit '/posts'
      expect(page).to have_content 'No posts yet'
      expect(page).to have_link 'Add a post'
    end
  end

  context 'displaying added post' do
    
      before do
      	Post.create(caption: "Hello cat", imageurl: 'http://i.imgur.com/ijMmg0t.jpg')
      end 

      scenario 'should display a caption' do
      visit '/posts'
      expect(page).to have_content 'Hello cat'
    	end
    	# scenario 'should display a photo' do
     #  visit '/posts'
     # 	expect(page).to have_css('img', text: 'http://i.imgur.com/ijMmg0t.jpg')
    	# end
  	end

  	 context 'adding a post' do
      scenario 'should be able to add a post' do
      visit '/posts'
      click_link 'Add a post'
      fill_in 'Caption', with: 'My baby'
      attach_file("Upload Your File", Rails.root + "spec/images/")
    	end
  	end
end