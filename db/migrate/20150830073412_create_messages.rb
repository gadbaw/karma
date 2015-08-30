class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :phone_number
      t.string :message_body

      t.timestamps null: false
    end
  end
end
