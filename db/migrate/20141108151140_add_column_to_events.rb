class AddColumnToEvents < ActiveRecord::Migration
  def change
    add_column :events, :choice_1_effect, :integer
    add_column :events, :choice_2_effect, :integer
  end
end
