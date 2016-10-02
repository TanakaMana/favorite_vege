class CreateVeges < ActiveRecord::Migration
  def change
    create_table :veges do |t|
      t.string :vege
      t.text :image
      t.timestamps null: false
    end
  end
end
