class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :eventname
      t.string :description
      t.string :services
      t.string :image_url
      t.integer :admin_id

      t.timestamps
    end
  end
end
