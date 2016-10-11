class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :dish
      t.text :photo
      t.string :link
      t.references :user
      t.references :vege
      t.timestamps null: false
    end
  end
end
