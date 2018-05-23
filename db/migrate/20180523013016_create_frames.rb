class CreateFrames < ActiveRecord::Migration[5.2]
  def change
    create_table :frames do |t|
      t.integer :first_roll
      t.integer :last_roll
      t.string :type

      t.timestamps
    end
  end
end
