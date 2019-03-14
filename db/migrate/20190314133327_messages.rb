class Messages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string    :firstname
      t.string    :lastname
      t.string    :email
      t.string    :message
      t.timestamps
    end
  end
end
