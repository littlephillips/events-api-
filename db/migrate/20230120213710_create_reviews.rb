class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :fullname
      t.string :email
      t.string :review
      t.integer :event_id
      t.integer :booking_id

      t.timestamps
    end
  end
end
