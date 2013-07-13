class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.float :x_percentage
      t.float :y_percentage

      t.timestamps
    end
  end
end

