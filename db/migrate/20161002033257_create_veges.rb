class CreateVeges < ActiveRecord::Migration
  def change
    create_table :veges do |t|

      t.timestamps null: false
    end
  end
end
