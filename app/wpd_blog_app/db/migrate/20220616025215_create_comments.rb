class CreateComments < ActiveRecord::Migration[6.1]
  def change
    drop_table :comments # generate missing
    create_table :comments do |t|
      t.references :post, null: false, foreign_key: true
      t.string :body

      t.timestamps
    end
  end
end
