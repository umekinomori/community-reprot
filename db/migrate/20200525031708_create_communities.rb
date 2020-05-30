class CreateCommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :communities do |t|
      t.references :user,     foreign_key: true
      t.string     :district
      t.string     :ancestry
      t.string     :volunter
      t.timestamps
    end
  end
end
