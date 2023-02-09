@regression
Feature: OrangeHRM Login Page
    # Scenario: Login using valid credentials
    #     Given I access the OrangeHRM Login Page
    #     When I enter username Admin
    #     And I enter password admin123
    #     And I click on the Login button
    #     Then I should be able to have access to OrangeHRM dashboard

    # Scenario: Login using invalid credentials
    #     Given I access the OrangeHRM Login Page
    #     When I enter username invalidAdmin
    #     And I enter password admin000
    #     And I click on the Login button
    #     Then I should be able to see an error with the message Invalid credentials

    Scenario Outline: Test Login using Scenario Outline
        Given I access the OrangeHRM Login Page
        When I enter username <username>
        And I enter password <password>
        And I click on the Login button
        Then I should be able to <assert>

        Examples:
            | username     | password | assert                                            |
            | Admin        | admin123 | have access to OrangeHRM dashboard                |
            | invalidAdmin | admin000 | see an error with the message Invalid credentials |