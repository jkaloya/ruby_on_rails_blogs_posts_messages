class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :message
      t.string :author
      t.references :post, index: true

      t.timestamps
    end
  end
end
