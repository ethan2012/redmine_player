Redmine::Plugin.register :polls do
  name 'Polls plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin_poll'
  author_url 'http://example.com/about'

  project_module :polls do
  	permission :查看polls, :polls => :index
  	permission :投票polls, :polls => :vote
  end
  menu :project_menu, :polls, { :controller => 'polls', :action => 'index' }, :caption => 'Polls', :after => :activity, :param => :project_id
end
