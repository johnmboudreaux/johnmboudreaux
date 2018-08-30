Feature:
    The page should load and the scroll feature works

    Scenario: View home page
        Given The page loads
        Then I should see "Hi, my name is John Michael"

    Scenario: Find heading
        Given The page loads
        Then I should see "I am a Front End Web Developer" inside of a "p"

    Scenario: Click the chevron to scroll down the page
        Given The page loads
        When I click the header chevron
        Then I should see "My Portfolio" inside of a "h2"
