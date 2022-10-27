*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/commons.robot

*** Test Cases ***
TC002
    Valid login
    input text                          name:searchTerm    Atomic Habbit
    Press Keys                          name:searchTerm    ENTER
    select from list by index           name:searchSortBy    1
    should be equal as strings          Rp189.951    Rp189.951
    close browser

TC003
    Valid login
    sleep                               2s
    input text                          searchTerm    Atomic Habbit
    Press Keys                          name:searchTerm    ENTER
    click link                          link:Add to basket
    sleep                               2s
    click element                       xpath://a[contains(text(),'Basket / Checkout')]
    element should contain              //span[contains(@class, 'basket-total')]    Rp340.872
    close browser

TC004
    Valid login
    sleep                               2s
    input text                          searchTerm    Atomic Habbit
    Press Keys                          name:searchTerm    ENTER
    click link                          link:Add to basket
    sleep                               2s
    click element                       xpath://a[contains(text(),'Basket / Checkout')]
    element should contain              //span[contains(@class, 'basket-total')]    Rp340.872
    click element                       //button[contains(@class, 'btn remove-btn')]
    element should contain              //div[contains(@class, 'checkout-head-wrap')]     Your basket is empty.
    close browser






