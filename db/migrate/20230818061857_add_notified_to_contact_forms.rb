class AddNotifiedToContactForms < ActiveRecord::Migration[7.0]
  def change
    add_column :contact_forms, :notified, :boolean
  end
end
