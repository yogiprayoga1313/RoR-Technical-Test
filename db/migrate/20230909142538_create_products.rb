class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :judul
      t.integer :tahun_terbit
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
