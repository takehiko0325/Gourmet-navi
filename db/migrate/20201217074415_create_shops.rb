class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
    t.string :name      ,  null:  false
    t.text :explanation ,  null:  false
    t.integer  :prefecture_id ,  null:  false
    t.integer  :shop_genre_id ,  null:  false
    t.string   :city ,  null:  false
    t.string   :phone_number  
    t.integer  :price,  null:  false
    t.string   :times,  null:  false
    t.references :user  ,null: false,foreign_key: true
    t.timestamps
    end
  end
end
