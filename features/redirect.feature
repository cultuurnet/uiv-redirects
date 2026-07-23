Feature: Test the UiTinVlaanderen redirects

  Background:
    Given I am using the UiTinVlaanderen acceptance URL

  Scenario Outline: Redirect
    When I send a GET request to "<source>"
    Then the response status should be 301
    And  the response header 'Location' should be '<destination>'

    Examples:
      | source       | destination                         |
      | /over/uitpas | https://www.uitpas.be/wat-is-uitpas |
