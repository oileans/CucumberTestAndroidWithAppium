
Feature: Produtcts List

Scenario: Should remove products of the list.
    Given I am on the products list
    When I select a product of the list
    Then The product should be removed from the list

Scenario: Should calculate all products of the list.
  Given I am on the products list
  When I buy some products of the list
  Then It should calculate all products of the list
