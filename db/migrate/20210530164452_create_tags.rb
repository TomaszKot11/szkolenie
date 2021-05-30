class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name 
      t.references :post
      t.timestamps
    end
  end
end
