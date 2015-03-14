Feature:menu

    @menu1
    Scenario: reaching menu page successfully
	   Given i am logged in as a user
	   When i click on order now button
	   And i click on ok button
	   Then i should see user in menu page

