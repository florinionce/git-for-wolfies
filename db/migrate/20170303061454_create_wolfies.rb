class CreateWolfies < ActiveRecord::Migration[5.0]
  def change
    create_table :wolfies do |t|
      t.string :name
      t.integer :wolfie_level
      t.datetime :dob

      t.timestamps
    end
  end
end
