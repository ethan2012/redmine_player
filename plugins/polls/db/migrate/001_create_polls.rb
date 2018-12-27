class CreatePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.string :question
      t.boolean :yes_no, default: false
    end
  end
end
