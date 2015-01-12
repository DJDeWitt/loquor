class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :hed
      t.string :dek
      t.text :body
      t.belongs_to :author

      t.timestamps null: false
    end
  end
end
