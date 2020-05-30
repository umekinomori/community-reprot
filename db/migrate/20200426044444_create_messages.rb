class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :content, null: :false
      t.references :user, foregin_key: true
      t.references :room, foregin_key: true
      t.timestamps
    end
  end
end
