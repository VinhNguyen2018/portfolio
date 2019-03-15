class ChangeMessagesToMessage < ActiveRecord::Migration[5.2]
  def change
    rename_table :messages, :message
  end
end
