class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.integer :good, default: 0, null: false
      t.references :user, null: false

      t.timestamps
    end
  end
end
