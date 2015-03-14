Feature:Login

    @login1
    Scenario: Valid login success
	   Given i'm on application landing page
	   When I enter the Username
	   And I enter the password
	   And I click on Login button
	   Then I should see the user logged in


    @login2
    Scenario: Valid login success part 2
	   Given i'm on application landing page
	   When I enter the Username as "live@ydqa.de" and I enter the password as "testen"
	   And I click on Login button
	   Then I should see the user logged in

