Feature: Test the UiTinVlaanderen redirects

  Background:
    Given I am using the UiTinVlaanderen acceptance URL

  Scenario Outline: Redirect
    When I send a GET request to "<source>"
    Then the response status should be 301
    And  the response header 'Location' should be '<destination>'

    Examples:
      | source                                   | destination                                                           |
      | /over/uitpas                             | https://www.uitpas.be/wat-is-uitpas                                   |
      | /vlieg                                   | https://acc.uitinvlaanderen.be/samenmetkinderen                       |
      | /vlieg/foo/bar                           | https://acc.uitinvlaanderen.be/samenmetkinderen/foo/bar               |
      | /agenda/voor-kinderen                    | https://acc.uitinvlaanderen.be/samenmetkinderen/agenda                |
      | /agenda/foo/voor-kinderen                | https://acc.uitinvlaanderen.be/samenmetkinderen/agenda/foo            |
      | /agenda/foo/bar/voor-kinderen            | https://acc.uitinvlaanderen.be/samenmetkinderen/agenda/foo/bar        |
      | /agenda/kamp-of-vakantie/voor-kinderen   | https://acc.uitinvlaanderen.be/voorkinderen/agenda/kamp-of-vakantie   |
      | /agenda/cursus-of-workshop/voor-kinderen | https://acc.uitinvlaanderen.be/voorkinderen/agenda/cursus-of-workshop |
      | /agenda/sportactiviteit/voor-kinderen    | https://acc.uitinvlaanderen.be/voorkinderen/agenda/sportactiviteit    |
      | /uitx                                    | https://acc.uitinvlaanderen.be/voorjongeren                           |
      | /uitx/foo/bar                            | https://acc.uitinvlaanderen.be/voorjongeren/foo/bar                   |
      | /agenda?targets=uitx                     | https://acc.uitinvlaanderen.be/voorjongeren/agenda                    |
