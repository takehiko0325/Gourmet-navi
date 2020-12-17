class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string   :name ,null: false
      t.integer  :food_genre_id ,null: false
      t.integer  :value ,null: false
      t.references :shop   ,null: false,foreign_key: true
      t.timestamps
    end
  end
end
