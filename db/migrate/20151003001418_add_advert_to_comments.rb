class AddAdvertToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :advert, index: true, foreign_key: true
  end
end
