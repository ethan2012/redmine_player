class CreateIssuePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :issue_plans do |t|
    	t.string :name
    	t.timestamp
    end
  end
end
