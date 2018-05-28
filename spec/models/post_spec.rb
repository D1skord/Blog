require 'rails_helper'

describe Post, type: :model do
  it { should validate_presence_of :title }

  it 'is created' do
    post = Post.create title: "Post" , summary: "Prev", body: "text"
    expect(post.title).to eq("Post")
  end

  it 'without title is not created' do
    post = Post.new summary: "Prev", body: "text"
    expect(post.save).to eq(false)
  end
end


