When /^I follow "([^"]*)"$/ do |link|
  click_link(link)
end
When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field_name, value|
  fill_in(field_name, :with => value)
end
When /^I press "([^"]*)"$/ do |button_name|
  click_button button_name
end
When /^I should be on (.+)$/ do |path|
  current_path.should == path_to(path)
end

When /^I should see "([^"]*)"$/ do |content|
  page.should have_content(content)
end

When /^I am on (.+)$/ do |page_name|
  visit path_to(page_name)
end
When /^I should not see "([^"]*)"$/ do |content|
  page.should_not have_content(content)
end
Then /^I should see "([^"]*)" within "([^"]*)"$/ do |text, selector|
  page.find(selector).should have_content(text)
end
Then /^I should not see the "([^"]*)" link$/ do |text|
  page.should_not have_css("a", :text => text), "Expected to see the #{text.inspect} link, but did not."
end
Then /^I should see the "([^"]*)" link$/ do |text|
  page.should have_css("a", :text => text), "Expected to see the #{text.inspect} link, but did not."
end
When /^I check "([^"]*)"$/ do |text|
  check(text)
end