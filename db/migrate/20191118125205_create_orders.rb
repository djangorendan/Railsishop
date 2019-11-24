class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :cart, foreign_key: true
      t.references :user, foreign_key: true
      t.string :payment
      t.string :status
      t.text :discription

      t.timestamps
    end
  end
end
