class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :body
      t.string :choice_1
      t.string :choice_2
      t.timestamps
    end
  end
end
