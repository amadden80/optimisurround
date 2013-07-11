class CreateFilterUserTable < ActiveRecord::Migration
  def change
    create_table :filters_users, id: false do |t|
      t.belongs_to :filter
      t.belongs_to :user
    end
  end
end
