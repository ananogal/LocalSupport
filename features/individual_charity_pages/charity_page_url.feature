Feature: As a user of the WebSite

Background: organisations have been added to database
    Given the following organisations exist:
      | name       | description             | address        | postcode | telephone | website             | email             |
      | Friendly   | Bereavement Counselling | 34 pinner road | HA1 4HZ  | 020800000 | http://friendly.org | superadmin@friendly.xx |
      | Unfriendly | Bunch of jerks          | 30 pinner road |          | 020800010 |                     |                   |

Scenario:	See url correctly
					Given I visit the home page
					And I visit the show page for the organisation named "Friendly"
					Then I see the organisation name in the url
