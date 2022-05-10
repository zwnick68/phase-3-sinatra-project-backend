class CreateFighter < ActiveRecord::Migration[6.1]
  def change
    create_table :fighters do |t|
      t.string :name
      t.integer :height
      t.integer :reach
      t.string :weightclass
      t.integer :wins
      t.integer :losses
      t.integer :draws
      t.integer :manager_id
      t.integer :promotion_id
    end
  end
end
