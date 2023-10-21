# 6410402104 พิชญา เสนา
Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    # เพิ่มสินค้าอะไรก็ได้อีก 1 อย่าง และเพิ่มสินค้านี้เข้าไปใน given
    And a product "Honey" with price 120.00 and stock of 15 exists

Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then total should be 41.00

Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    Then total should be 121.00

    # -- หรือใช้ Scenario Outline เพื่อทดสอบหลายกรณีใน 1 scenario --
    #Scenario Outline: Buy one product in table
    #    When I buy <product> with quantity <quantity>
    #    Then total should be <total>
    #    Examples:
    #        | product  | quantity |  total  |
    #        | "Bread"  |     1    |   20.50 |
    #        | "Jam"    |     2    |  160.00 |




