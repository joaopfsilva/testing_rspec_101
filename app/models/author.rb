class Author < ApplicationRecord
    has_many :posts

    validates_presence_of :firstname
    validates_presence_of :lastname
end
