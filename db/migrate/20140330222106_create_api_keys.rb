class CreateApiKeys < ActiveRecord::Migration
  def change
    create_table :api_keys do |t|
      # t.integer :id
      t.integer :user_id
      t.text :token

      t.timestamps
    end
  end
end
