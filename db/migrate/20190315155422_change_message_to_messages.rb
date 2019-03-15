class ChangeMessageToMessages < ActiveRecord::Migration[5.2]
  def change
    rename_table :message, :messages
  end
end
