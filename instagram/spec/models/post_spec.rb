require 'rails_helper'

RSpec.describe Post, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it 'should return imageurl and caption' do
  		post = Post.create(caption: "Hello cat", imageurl: "http://i.imgur.com/ijMmg0t.jpg")
  		expect(post.caption).to eq ("Hello cat")
  		expect(post.imageurl).to eq("http://i.imgur.com/ijMmg0t.jpg")
  end
end
