Feature:favourites

    @fav1
    Scenario: successfully click on heart button
	   Given i am logged in as a user
	   When i am in menu page
	   And i click on "heart"
	   Then I should see the item is added to fav section


