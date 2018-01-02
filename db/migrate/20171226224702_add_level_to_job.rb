class AddLevelToJob < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :level, :string
  end
end
