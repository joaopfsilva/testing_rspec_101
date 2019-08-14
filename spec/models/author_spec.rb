require 'rails_helper'

describe Author, type: :model do

  before (:all) do
    @author = create(:author)
  end

  it "is valid with valid attributes" do
    expect(@author).to be_valid
  end

  it "is not valid without firstname" do 
    author = build(:author, firstname: nil)
    expect(author).to_not be_valid
  end

  it "is not valid without lastname" do 
    author = build(:author, lastname: nil)
    expect(author).to_not be_valid
  end

end