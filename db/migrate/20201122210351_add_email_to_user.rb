class AddEmailToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :email, :string, default: 'mail@example.com'
  end
end
