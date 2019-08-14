require 'rails_helper'

describe Post, type: :model do

  before (:all) do
    @post = create(:post)
  end

  it "is valid with valid attributes" do
    expect(@post).to be_valid
  end

  it "is not valid without title" do 
    post = build(:post, title: nil)
    expect(post).to_not be_valid
  end

  it "is valid without content" do 
    post = build(:post, content: nil)
    expect(post).to be_valid
  end
end
