class CreateArticleTags < ActiveRecord::Migration[5.1]
  def change
    create_table :article_tags do |t|
      t.references :article, null: false
      t.references :tag, null: false
      
      t.timestamps
    end
  end
end
