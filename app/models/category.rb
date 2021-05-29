class Category < ApplicationRecord 
    has_many :categories_post
    has_many :posts, through: :categories_post # dependent
end