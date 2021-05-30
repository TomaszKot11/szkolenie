class Post < ApplicationRecord
    has_many :comments, dependent: :destroy

    has_many :categories_post
    has_many :categories, through: :categories_post

    has_one :tag

    ## Scope example
    scope :by_updated_at, -> { order(:updated_at) }
    # default_scope -> Nie naduzybwać!
end
