class CreateSaloons < ActiveRecord::Migration[6.0]
  def change
    create_table :saloons do |t|
      t.string :name
      t.string :address
      t.time :opening
      t.time :closing
      t.integer :user_id

      t.timestamps
    end
    add_index :saloons, :user_id
  end
end
