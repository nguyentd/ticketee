When /^I follow "([^"]*)"$/ do |link|
  click_link(link)
end
When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field_name, value|
  fill_in(field_name, :with => value)
end
When /^I press "([^"]*)"$/ do |button_name|
  click_button button_name
end
Then /^I should see "([^"]*)"$/ do |content|
  page.should have_content(content)
end
Given /^I am on the "([^"]*)"$/ do |page_name|
  visit path_to(page_name)
end

def path_to(page_name)
  case page_name
    when /homepage/
      '/'
    when /the project page for "([^"]*)"/
      project_path(Project.find_by_name!($1))
  end
end
When /^I should be on (.+)$/ do |path|
   current_path.should == path_to(path)
end