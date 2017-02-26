	def add_a_post
		visit '/posts'
		click_link 'Add a post'
		fill_in 'Caption', with: 'Hello there'
		attach_file("Image", Rails.root + "spec/images/example.jpg")
		click_button("Create Post")
	end