Feature:favourites
	@fav1
	Scenario: successfully click on heart button 
		Given I am logged in as a user 
		And i am succcessfully in menu page
		When i click on favourites button
		Then it must be marked 