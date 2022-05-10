class CreatePromotion < ActiveRecord::Migration[6.1]
  def change
    create_table :promotions do |t|
      t.string :name
      
    end 
  end
end
