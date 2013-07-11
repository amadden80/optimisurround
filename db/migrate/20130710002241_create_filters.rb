class CreateFilters < ActiveRecord::Migration
  def change
    create_table :filters do |t|
      t.boolean :ear
      t.decimal :azimuth
      t.decimal :elevation
      t.string :coefficients

      t.timestamps
    end
  end
end
