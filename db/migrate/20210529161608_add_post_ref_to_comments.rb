class AddPostRefToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :post, foreign_key: true  
  end
end
