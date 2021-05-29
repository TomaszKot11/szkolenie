class Post < ApplicationRecord
    has_many :comments

    has_many :categories_post
    has_many :categories, through: :categories_post
end
