class CreateProjectIssuePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :project_issue_plans do |t|
    	t.references :project
    	t.references :issue_plan
    end
  end
end
