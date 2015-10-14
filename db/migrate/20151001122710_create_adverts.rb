class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.string :email
      t.string :title
      t.text :body
      t.string :category

      t.timestamps null: false
    end
  end
end
