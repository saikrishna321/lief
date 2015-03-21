require 'calabash-android/calabash_steps'

When(/^i click on "([^"]*)"$/) do |arg|
	wait_for_elements_exist ["* marked:'#{arg}'"], :timeout => 30
	touch("* marked:'#{arg}'")
	sleep 5
end