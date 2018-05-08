class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.strings :title
      t.texts :content
      t.strings :user_name

      t.timestamps null: false
    end
  end
end
