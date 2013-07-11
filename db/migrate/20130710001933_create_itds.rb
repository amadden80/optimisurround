class CreateItds < ActiveRecord::Migration
  def change
    create_table :itds do |t|
      t.decimal :milliseconds

      t.timestamps
    end
  end
end
