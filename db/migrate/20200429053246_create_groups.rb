class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.references :user,     null: false, foreign_key: true
      t.string     :district, unique: true
      t.timestamps
    end
  end
end
