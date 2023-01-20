class CreateEngagements < ActiveRecord::Migration[7.0]
  def change
    create_table :engagements do |t|
      t.string :fullname
      t.string :email
      t.string :comment

      t.timestamps
    end
  end
end
