Feature: Chicago Signup

  Scenario: happy path for signing up for Chicago
    Given I open browser and navigate to "http://shyp-web-playground.herokuapp.com/chicago"
    Then I type "12345@gmail.com" to Email
    Then I type "12345" to Zip code
    And I click Sign up button
    Then I see You're on the list page

  @chicago_signup
  Scenario Outline: sign up for Chicago
    Given I open browser and navigate to "http://shyp-web-playground.herokuapp.com/chicago"
    Then I type "<email>" to Email
    Then I type "<zip_code>" to Zip code
    And I click Sign up button
    Then I see You're on the list page

    Examples: email address

      |        email           |zip_code|
      |12345@gmail.com           |12345   |

