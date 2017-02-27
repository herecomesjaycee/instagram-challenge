	def create_user
		visit '/'
		click_link 'Sign up'
		fill_in 'Email', with: 'bob@example.com'
		fill_in 'Password', with: '123456789'
		fill_in 'Password confirmation', with:'123456789'
		click_button('Sign up')
	end

	def add_a_post
		visit '/posts'
		click_link 'Add a post'
		fill_in 'Caption', with: 'Hello there'
		attach_file("Image", Rails.root + "spec/images/example.jpg")
		click_button("Create Post")
	end