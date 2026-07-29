Feature: Test the UiTinVlaanderen redirects

  Background:
    Given I am using the UiTinVlaanderen acceptance URL

  Scenario Outline: Redirect
    When I send a GET request to "<source>"
    Then the response status should be 301
    And  the response header 'Location' should be '<destination>'

    Examples:
      | source       | destination                         |
      | /vlieg | /samenmetkinderen |
      | /uitx | /voorjongeren |
      | /agenda/voor-kinderen* | /samenmetkinderen/agenda/* |
      | /agenda?targets=uitx* | /voorjongeren/agenda/* |
