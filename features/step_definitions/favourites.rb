And (/^i am succcessfully in menu page$/) do
	steps %Q{
	   When i click on order now button
	   And i click on ok button
	   Then i should see user in menu page
	}
end
When (/^i click on favourites button$/) do
	wait_for_elements_exist ["* id:'menu_search'"], :timeout => 30
	touch("* id:'menu_search'")
	sleep 5
end
Then (/^it must be marked$/) do
	wait_for_elements_exist ["* marked:'filterIV'"], :timeout => 30
	touch("* marked:'filterIV'")
	sleep 5
	user_in_menu_page=query("* marked:'My stamps'", :isEnabled)[0]
	expect(user_in_menu_page).to eq(true)
	touch("* marked:'filterIV1'")
end