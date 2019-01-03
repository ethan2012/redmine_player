namespace :issue_plans do
	desc "insert default issue plans"
  task :insert_default_issue_plans => :environment do
    IssuePlan.find_or_create_by(name: 'Crash验证规划')
		IssuePlan.find_or_create_by(name: 'AB验证规划')
		IssuePlan.find_or_create_by(name: '灰度验证规划')
		IssuePlan.find_or_create_by(name: '非AB验证规划')
		IssuePlan.find_or_create_by(name: '其他验证规划')
  end

  desc "list project issues plans"
  task :link_issue_plans_to_projects => :environment do
  	project = Project.find("wifi-android")
  	p project.issue_plans
  end
end