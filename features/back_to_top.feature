Feature:
    The back to top button scrolls back to the top of the page

    Scenario:
        Given I am the bottom of the page
        Then I should see an "a" with the href "#banner"
        And I should be able to click it
