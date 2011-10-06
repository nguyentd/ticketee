Given /^there is a project called "([^"]*)"$/ do |project_name|
  @project = Factory(:project, :name =>project_name)
end