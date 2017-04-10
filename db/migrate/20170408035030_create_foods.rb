class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.boolean :favorite, default: false
      t.timestamps
    end
  end
end
