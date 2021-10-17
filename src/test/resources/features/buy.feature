Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given สินค้า "Bread" with price 20.50 exists
    And สินค้า "Jam" with price 80.00 exists
    And สินค้า "Avocado" with price 50.00 exists

Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then total should be 41.00

Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    Then total should be 121.00

Scenario: Buy three products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    And I buy "Avocado" with quantity 1
    Then total should be 171.00

