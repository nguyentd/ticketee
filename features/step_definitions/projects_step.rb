Given /^there is a project called "([^"]*)"$/ do |project_name|
  Factory(:project, :name =>project_name)
end